using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace SistemaGestionBodegas
{
    public class Conector : Form
    {
        // ═══════════════════════════════════════════════════════════════
        // CONFIGURACIÓN DE CONEXIÓN
        // ═══════════════════════════════════════════════════════════════
        private string cadenaConexion = "server=localhost;user id=root;password=masterps3;database=mini_bodegas;AllowUserVariables=True;";

        // ═══════════════════════════════════════════════════════════════
        // PALETA DE COLORES
        // ═══════════════════════════════════════════════════════════════
        private readonly Color colorPrimario = Color.FromArgb(41, 128, 185);
        private readonly Color colorSecundario = Color.FromArgb(39, 174, 96);
        private readonly Color colorFondo = Color.FromArgb(28, 32, 38);
        private readonly Color colorPanel = Color.FromArgb(42, 48, 58);
        private readonly Color colorTexto = Color.FromArgb(236, 240, 241);
        private readonly Color colorAccento = Color.FromArgb(243, 156, 18);
        private readonly Color colorPeligro = Color.FromArgb(231, 76, 60);
        private readonly Color colorInfo = Color.FromArgb(52, 152, 219);

        // ═══════════════════════════════════════════════════════════════
        // DEFINICIÓN DE PERMISOS
        // ═══════════════════════════════════════════════════════════════
        private readonly Dictionary<string, HashSet<string>> PermisosPorUsuario = new Dictionary<string, HashSet<string>>(StringComparer.OrdinalIgnoreCase)
        {
            { "Ventas", new HashSet<string> {
                "Ver bodegas disponibles", "Ver contratos activos", "Ver reservas pendientes",
                "Ver reporte de ocupación", "Reservar bodega", "Convertir reserva a contrato",
                "Cancelar reserva"
            }},
            { "Cobranza", new HashSet<string> {
                "Ver cartera vencida", "Ver historial de contrato", "Ver contratos activos",
                "Ver ingresos por periodo", "Generar cargo mensual", "Registrar pago",
                "Suspender contrato"
            }},
            { "Gerencia", new HashSet<string> {
                "Ver bodegas disponibles", "Ver cartera vencida", "Ver historial de contrato",
                "Ver contratos activos", "Ver reservas pendientes", "Ver reporte de ocupación",
                "Ver ingresos por periodo", "Terminar contrato"
            }},
            { "Admin", new HashSet<string> {
                "Ver bodegas disponibles", "Ver cartera vencida", "Ver historial de contrato",
                "Ver contratos activos", "Ver reservas pendientes", "Ver reporte de ocupación",
                "Ver ingresos por periodo", "Reservar bodega", "Convertir reserva a contrato",
                "Cancelar reserva", "Generar cargo mensual", "Registrar pago",
                "Suspender contrato", "Terminar contrato"
            }}
        };

        // ═══════════════════════════════════════════════════════════════
        // CONTROLES DEL FORMULARIO
        // ═══════════════════════════════════════════════════════════════
        private Panel panelSuperior;
        private Label lblTitulo;
        private Label lblSubtitulo;
        private Label lblEstadoConexion;

        private Panel panelIzquierdo;
        private GroupBox groupBoxUsuario;
        private ComboBox comboUsuario;
        private GroupBox groupBoxAccion;
        private ComboBox comboAccion;
        private GroupBox groupBoxParametros;
        private Panel panelParametros;

        private Panel panelCentral;
        private GroupBox groupBoxConsulta;
        private TextBox txtConsulta;
        private Panel panelBotones;
        private Button btnEjecutar;
        private Button btnLimpiar;
        private Label lblRegistros;
        private GroupBox groupBoxResultados;
        private DataGridView dataGridViewRespuesta;

        private bool ejecutando = false;

        // ═══════════════════════════════════════════════════════════════
        // CONSTRUCTOR
        // ═══════════════════════════════════════════════════════════════
        public Conector()
        {
            InicializarComponentes();
            ConfigurarTemaModerno();
            ProbarConexion();
            CargarUsuarios();
            CargarAcciones();
        }

        // ═══════════════════════════════════════════════════════════════
        // CREAR TODOS LOS CONTROLES PROGRAMÁTICAMENTE
        // ═══════════════════════════════════════════════════════════════
        private void InicializarComponentes()
        {
            // Configurar formulario principal
            this.Text = "Sistema de Gestión de Bodegas - Control Integral";
            this.Size = new Size(1400, 800);
            this.MinimumSize = new Size(1200, 700);
            this.StartPosition = FormStartPosition.CenterScreen;
            this.BackColor = colorFondo;
            this.Font = new Font("Segoe UI", 9.75F);

            // ═══ PANEL SUPERIOR ═══
            panelSuperior = new Panel
            {
                Dock = DockStyle.Top,
                Height = 90,
                BackColor = Color.FromArgb(35, 40, 48)
            };

            lblTitulo = new Label
            {
                Text = "🏢 Sistema de Gestión de Bodegas",
                Font = new Font("Segoe UI", 20.25F, FontStyle.Bold),
                ForeColor = colorAccento,
                Location = new Point(15, 15),
                AutoSize = true
            };
            panelSuperior.Controls.Add(lblTitulo);

            lblSubtitulo = new Label
            {
                Text = "Control de Reservas, Contratos, Pagos y Reportes de Ocupación",
                Font = new Font("Segoe UI", 10F),
                ForeColor = Color.FromArgb(189, 195, 199),
                Location = new Point(18, 55),
                AutoSize = true
            };
            panelSuperior.Controls.Add(lblSubtitulo);

            lblEstadoConexion = new Label
            {
                Text = "🟢 Conectando...",
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorSecundario,
                AutoSize = true,
                Anchor = AnchorStyles.Top | AnchorStyles.Right
            };
            panelSuperior.Controls.Add(lblEstadoConexion);
            this.Load += (s, e) => lblEstadoConexion.Location = new Point(panelSuperior.Width - lblEstadoConexion.Width - 20, 35);

            // ═══ PANEL IZQUIERDO ═══
            panelIzquierdo = new Panel
            {
                Dock = DockStyle.Left,
                Width = 380,
                BackColor = colorPanel,
                Padding = new Padding(10)
            };

            // IMPORTANTE: Crear parámetros primero (para que quede Fill al final)
            panelParametros = new Panel
            {
                Dock = DockStyle.Fill,
                BackColor = colorPanel,
                AutoScroll = true,
                Padding = new Padding(5)
            };

            groupBoxParametros = new GroupBox
            {
                Text = "📝 PARÁMETROS",
                Dock = DockStyle.Fill,
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorAccento,
                Padding = new Padding(10)
            };
            groupBoxParametros.Controls.Add(panelParametros);

            // Acción
            comboAccion = new ComboBox
            {
                Dock = DockStyle.Fill,
                Font = new Font("Segoe UI", 11F),
                BackColor = Color.FromArgb(52, 58, 70),
                ForeColor = colorTexto,
                FlatStyle = FlatStyle.Flat,
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            comboAccion.SelectedIndexChanged += comboAccion_SelectedIndexChanged;

            groupBoxAccion = new GroupBox
            {
                Text = "⚡ ACCIÓN",
                Dock = DockStyle.Top,
                Height = 80,
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorAccento,
                Padding = new Padding(10)
            };
            groupBoxAccion.Controls.Add(comboAccion);

            // Usuario
            comboUsuario = new ComboBox
            {
                Dock = DockStyle.Fill,
                Font = new Font("Segoe UI", 11F),
                BackColor = Color.FromArgb(52, 58, 70),
                ForeColor = colorTexto,
                FlatStyle = FlatStyle.Flat,
                DropDownStyle = ComboBoxStyle.DropDownList
            };
            comboUsuario.SelectedIndexChanged += comboUsuario_SelectedIndexChanged;

            groupBoxUsuario = new GroupBox
            {
                Text = "👤 USUARIO",
                Dock = DockStyle.Top,
                Height = 80,
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorAccento,
                Padding = new Padding(10)
            };
            groupBoxUsuario.Controls.Add(comboUsuario);

            // Agregar al panel izquierdo en orden inverso
            panelIzquierdo.Controls.Add(groupBoxParametros);
            panelIzquierdo.Controls.Add(groupBoxAccion);
            panelIzquierdo.Controls.Add(groupBoxUsuario);

            // ═══ PANEL CENTRAL ═══
            panelCentral = new Panel
            {
                Dock = DockStyle.Fill,
                BackColor = colorFondo,
                Padding = new Padding(10)
            };

            // DataGridView y GroupBox Resultados
            dataGridViewRespuesta = new DataGridView
            {
                Dock = DockStyle.Fill,
                BackgroundColor = colorPanel,
                GridColor = Color.FromArgb(70, 75, 85),
                BorderStyle = BorderStyle.None,
                ReadOnly = true,
                AllowUserToAddRows = false,
                AllowUserToDeleteRows = false,
                SelectionMode = DataGridViewSelectionMode.FullRowSelect,
                MultiSelect = false,
                AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill,
                RowTemplate = { Height = 35 }
            };
            EstilizarDataGridView(dataGridViewRespuesta);

            groupBoxResultados = new GroupBox
            {
                Text = "📊 RESULTADOS",
                Dock = DockStyle.Fill,
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorAccento,
                Padding = new Padding(10)
            };
            groupBoxResultados.Controls.Add(dataGridViewRespuesta);

            // Panel de consulta y botones
            txtConsulta = new TextBox
            {
                Dock = DockStyle.Fill,
                Multiline = true,
                ScrollBars = ScrollBars.Both,
                WordWrap = false,
                ReadOnly = true,
                Font = new Font("Consolas", 10F),
                BackColor = Color.FromArgb(35, 40, 48),
                ForeColor = colorTexto,
                BorderStyle = BorderStyle.FixedSingle
            };

            // Botones
            btnEjecutar = new Button
            {
                Text = "▶️ Ejecutar",
                Location = new Point(5, 5),
                Size = new Size(180, 40),
                Font = new Font("Segoe UI", 11F, FontStyle.Bold),
                BackColor = colorPrimario,
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Cursor = Cursors.Hand
            };
            btnEjecutar.FlatAppearance.BorderSize = 0;
            btnEjecutar.Click += btnEjecutar_Click;
            btnEjecutar.MouseEnter += (s, e) => btnEjecutar.BackColor = Color.FromArgb(52, 152, 219);
            btnEjecutar.MouseLeave += (s, e) => btnEjecutar.BackColor = colorPrimario;

            btnLimpiar = new Button
            {
                Text = "🗑️ Limpiar",
                Location = new Point(195, 5),
                Size = new Size(180, 40),
                Font = new Font("Segoe UI", 11F, FontStyle.Bold),
                BackColor = colorSecundario,
                ForeColor = Color.White,
                FlatStyle = FlatStyle.Flat,
                Cursor = Cursors.Hand
            };
            btnLimpiar.FlatAppearance.BorderSize = 0;
            btnLimpiar.Click += btnLimpiar_Click;
            btnLimpiar.MouseEnter += (s, e) => btnLimpiar.BackColor = Color.FromArgb(46, 204, 113);
            btnLimpiar.MouseLeave += (s, e) => btnLimpiar.BackColor = colorSecundario;

            lblRegistros = new Label
            {
                Text = "📊 Registros: 0",
                Font = new Font("Segoe UI", 11F, FontStyle.Bold),
                ForeColor = colorInfo,
                AutoSize = true,
                Anchor = AnchorStyles.Top | AnchorStyles.Right
            };

            panelBotones = new Panel
            {
                Dock = DockStyle.Bottom,
                Height = 50
            };
            panelBotones.Controls.Add(btnEjecutar);
            panelBotones.Controls.Add(btnLimpiar);
            panelBotones.Controls.Add(lblRegistros);
            panelBotones.Resize += (s, e) => lblRegistros.Location = new Point(panelBotones.Width - lblRegistros.Width - 10, 15);

            groupBoxConsulta = new GroupBox
            {
                Text = "📜 CONSULTA SQL",
                Dock = DockStyle.Top,
                Height = 220,
                Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                ForeColor = colorAccento,
                Padding = new Padding(10)
            };
            groupBoxConsulta.Controls.Add(txtConsulta);
            groupBoxConsulta.Controls.Add(panelBotones);

            // Agregar al panel central en orden inverso
            panelCentral.Controls.Add(groupBoxResultados);
            panelCentral.Controls.Add(groupBoxConsulta);

            // Agregar paneles principales al formulario
            this.Controls.Add(panelCentral);
            this.Controls.Add(panelIzquierdo);
            this.Controls.Add(panelSuperior);
        }

        private void ConfigurarTemaModerno()
        {
            this.BackColor = colorFondo;
            this.ForeColor = colorTexto;
        }

        private void EstilizarDataGridView(DataGridView dgv)
        {
            dgv.DefaultCellStyle.BackColor = Color.FromArgb(50, 55, 65);
            dgv.DefaultCellStyle.ForeColor = colorTexto;
            dgv.DefaultCellStyle.SelectionBackColor = colorPrimario;
            dgv.DefaultCellStyle.SelectionForeColor = Color.White;
            dgv.DefaultCellStyle.Font = new Font("Segoe UI", 9.5F);
            dgv.DefaultCellStyle.Padding = new Padding(5);

            dgv.AlternatingRowsDefaultCellStyle.BackColor = Color.FromArgb(45, 50, 60);

            dgv.ColumnHeadersDefaultCellStyle.BackColor = Color.FromArgb(35, 40, 48);
            dgv.ColumnHeadersDefaultCellStyle.ForeColor = colorAccento;
            dgv.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 10F, FontStyle.Bold);
            dgv.ColumnHeadersDefaultCellStyle.Padding = new Padding(5);
            dgv.ColumnHeadersHeight = 40;
            dgv.EnableHeadersVisualStyles = false;
        }

        private void ProbarConexion()
        {
            try
            {
                using (MySqlConnection conn = new MySqlConnection(cadenaConexion))
                {
                    conn.Open();
                    lblEstadoConexion.Text = "🟢 Conectado a MySQL";
                    lblEstadoConexion.ForeColor = colorSecundario;
                }
            }
            catch (Exception ex)
            {
                lblEstadoConexion.Text = "🔴 Sin conexión";
                lblEstadoConexion.ForeColor = colorPeligro;
                MessageBox.Show(
                    "Error de conexión a la base de datos:\n\n" + ex.Message +
                    "\n\nVerifica:\n" +
                    "• MySQL está ejecutándose\n" +
                    "• La base de datos 'mini_bodegas' existe\n" +
                    "• Usuario y contraseña son correctos",
                    "Error de Conexión",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Error
                );
            }
        }

        private void CargarUsuarios()
        {
            comboUsuario.Items.Clear();
            comboUsuario.Items.Add("👤 Ventas");
            comboUsuario.Items.Add("💰 Cobranza");
            comboUsuario.Items.Add("📊 Gerencia");
            comboUsuario.Items.Add("⚙️ Admin");
            comboUsuario.SelectedIndex = 0;
        }

        private void CargarAcciones()
        {
            comboAccion.Items.Clear();
            comboAccion.Items.Add("═══════ 📋 CONSULTAS ═══════");
            comboAccion.Items.Add("Ver bodegas disponibles");
            comboAccion.Items.Add("Ver cartera vencida");
            comboAccion.Items.Add("Ver historial de contrato");
            comboAccion.Items.Add("Ver contratos activos");
            comboAccion.Items.Add("Ver reservas pendientes");
            comboAccion.Items.Add("Ver reporte de ocupación");
            comboAccion.Items.Add("Ver ingresos por periodo");
            comboAccion.Items.Add("═══════ ⚡ OPERACIONES ═══════");
            comboAccion.Items.Add("Reservar bodega");
            comboAccion.Items.Add("Convertir reserva a contrato");
            comboAccion.Items.Add("Cancelar reserva");
            comboAccion.Items.Add("Generar cargo mensual");
            comboAccion.Items.Add("Registrar pago");
            comboAccion.Items.Add("Suspender contrato");
            comboAccion.Items.Add("Terminar contrato");
            comboAccion.SelectedIndex = 1;
        }

        private void comboUsuario_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboAccion.SelectedItem != null)
            {
                string accion = comboAccion.SelectedItem.ToString();
                if (!accion.StartsWith("═══"))
                {
                    RenderizarPanelParametros(accion);
                    ActualizarConsulta(accion);
                }
            }
        }

        private void comboAccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboAccion.SelectedItem == null) return;
            string accion = comboAccion.SelectedItem.ToString();
            if (accion.StartsWith("═══")) return;

            RenderizarPanelParametros(accion);
            ActualizarConsulta(accion);
        }

        private void RenderizarPanelParametros(string accion)
        {
            panelParametros.Controls.Clear();
            int y = 15;
            int labelX = 15;
            int controlX = 180;

            Action<string> AddLabel = delegate (string txt)
            {
                Label lbl = new Label
                {
                    Text = txt,
                    ForeColor = colorAccento,
                    Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                    Location = new Point(labelX, y + 4),
                    AutoSize = true
                };
                panelParametros.Controls.Add(lbl);
            };

            Action<string, int> AddText = delegate (string name, int width)
            {
                TextBox t = new TextBox
                {
                    Name = name,
                    Width = width,
                    Location = new Point(controlX, y),
                    BackColor = Color.FromArgb(60, 65, 75),
                    ForeColor = colorTexto,
                    BorderStyle = BorderStyle.FixedSingle,
                    Font = new Font("Segoe UI", 10F)
                };
                t.TextChanged += delegate { ActualizarConsulta(accion); };
                panelParametros.Controls.Add(t);
                y += 40;
            };

            Action<string, string> AddDate = delegate (string label, string name)
            {
                Label lbl = new Label
                {
                    Text = label,
                    ForeColor = colorAccento,
                    Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                    Location = new Point(labelX, y + 4),
                    AutoSize = true
                };
                panelParametros.Controls.Add(lbl);

                DateTimePicker dtp = new DateTimePicker
                {
                    Name = name,
                    Format = DateTimePickerFormat.Short,
                    Location = new Point(controlX, y),
                    Font = new Font("Segoe UI", 10F)
                };
                dtp.ValueChanged += delegate { ActualizarConsulta(accion); };
                panelParametros.Controls.Add(dtp);
                y += 40;
            };

            Action<string, string, string[]> AddCombo = delegate (string label, string name, string[] items)
            {
                Label lbl = new Label
                {
                    Text = label,
                    ForeColor = colorAccento,
                    Font = new Font("Segoe UI", 10F, FontStyle.Bold),
                    Location = new Point(labelX, y + 4),
                    AutoSize = true
                };
                panelParametros.Controls.Add(lbl);

                ComboBox cb = new ComboBox
                {
                    Name = name,
                    Location = new Point(controlX, y),
                    DropDownStyle = ComboBoxStyle.DropDownList,
                    BackColor = Color.FromArgb(60, 65, 75),
                    ForeColor = colorTexto,
                    FlatStyle = FlatStyle.Flat,
                    Font = new Font("Segoe UI", 10F),
                    Width = 200
                };

                foreach (string item in items)
                    cb.Items.Add(item);
                if (cb.Items.Count > 0) cb.SelectedIndex = 0;
                cb.SelectedIndexChanged += delegate { ActualizarConsulta(accion); };
                panelParametros.Controls.Add(cb);
                y += 40;
            };

            if (accion == "Reservar bodega")
            {
                AddLabel("📦 ID Cliente:");
                AddText("txtIdCliente", 140);
                AddLabel("🏠 ID Bodega:");
                AddText("txtIdBodega", 140);
                AddDate("📅 Fecha Inicio:", "dtpFechaInicio");
            }
            else if (accion == "Convertir reserva a contrato" || accion == "Cancelar reserva")
            {
                AddLabel("🎫 ID Reserva:");
                AddText("txtIdReserva", 140);
            }
            else if (accion == "Generar cargo mensual")
            {
                AddLabel("📄 ID Contrato:");
                AddText("txtIdContrato", 140);
                AddLabel("📆 Periodo (YYYY-MM):");
                AddText("txtPeriodo", 140);
                AddLabel("🎁 ID Promoción:");
                AddText("txtIdPromocion", 140);
            }
            else if (accion == "Registrar pago")
            {
                AddLabel("💳 ID Cargo:");
                AddText("txtIdCargo", 140);
                AddLabel("💵 Monto:");
                AddText("txtMonto", 140);
                AddCombo("💰 Método de Pago:", "cbMetodoPago",
                    new string[] { "EFECTIVO", "TRANSFERENCIA", "TARJETA", "CHEQUE" });
                AddLabel("🔖 Referencia:");
                AddText("txtReferencia", 250);
            }
            else if (accion == "Suspender contrato" || accion == "Ver historial de contrato")
            {
                AddLabel("📄 ID Contrato:");
                AddText("txtIdContrato", 140);
            }
            else if (accion == "Terminar contrato")
            {
                AddLabel("📄 ID Contrato:");
                AddText("txtIdContrato", 140);
                AddLabel("📝 Motivo:");
                AddText("txtMotivo", 300);
            }

            ActualizarConsulta(accion);
        }

        private void ActualizarConsulta(string accion)
        {
            string consulta = "";
            string usuario = ObtenerUsuarioActual();

            if (accion == "Ver bodegas disponibles")
                consulta = "SELECT * FROM vw_bodegas_disponibles;";
            else if (accion == "Ver cartera vencida")
                consulta = "SELECT * FROM vw_cartera_vencida;";
            else if (accion == "Ver historial de contrato")
            {
                TextBox t = panelParametros.Controls["txtIdContrato"] as TextBox;
                string idc = "1";
                if (t != null && !string.IsNullOrEmpty(t.Text.Trim())) idc = t.Text.Trim();
                consulta = "SELECT * FROM vw_historial_contrato WHERE id_contrato = " + idc + ";";
            }
            else if (accion == "Ver contratos activos")
                consulta = "SELECT * FROM vw_contratos_activos;";
            else if (accion == "Ver reservas pendientes")
                consulta = "SELECT * FROM vw_reservas_pendientes;";
            else if (accion == "Ver reporte de ocupación")
                consulta = "SELECT * FROM vw_reporte_ocupacion;";
            else if (accion == "Ver ingresos por periodo")
                consulta = "SELECT * FROM vw_ingresos_por_periodo;";
            else if (accion == "Reservar bodega")
                consulta = ConsultaReservar(usuario);
            else if (accion == "Convertir reserva a contrato")
                consulta = ConsultaConvertir(usuario);
            else if (accion == "Cancelar reserva")
                consulta = ConsultaCancelar(usuario);
            else if (accion == "Generar cargo mensual")
                consulta = ConsultaCargo(usuario);
            else if (accion == "Registrar pago")
                consulta = ConsultaPago(usuario);
            else if (accion == "Suspender contrato")
                consulta = ConsultaSuspender(usuario);
            else if (accion == "Terminar contrato")
                consulta = ConsultaTerminar(usuario);

            txtConsulta.Text = consulta;
        }

        private string ObtenerUsuarioActual()
        {
            if (comboUsuario.SelectedItem != null)
            {
                string seleccion = comboUsuario.SelectedItem.ToString();
                return seleccion.Replace("👤", "").Replace("💰", "").Replace("📊", "").Replace("⚙️", "").Trim();
            }
            return "Admin";
        }

        private string ConsultaReservar(string usuario)
        {
            TextBox tC = panelParametros.Controls["txtIdCliente"] as TextBox;
            TextBox tB = panelParametros.Controls["txtIdBodega"] as TextBox;
            DateTimePicker dt = panelParametros.Controls["dtpFechaInicio"] as DateTimePicker;

            string cli = "1";
            if (tC != null && !string.IsNullOrEmpty(tC.Text.Trim())) cli = tC.Text.Trim();

            string bod = "1";
            if (tB != null && !string.IsNullOrEmpty(tB.Text.Trim())) bod = tB.Text.Trim();

            string fecha = DateTime.Today.ToString("yyyy-MM-dd");
            if (dt != null) fecha = dt.Value.ToString("yyyy-MM-dd");

            string s = "CALL sp_reservar_bodega(" + cli + ", " + bod + ", '" + fecha + "', '" + usuario + "', @id_reserva, @mensaje);\n";
            s += "SELECT @id_reserva AS id_reserva, @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaConvertir(string usuario)
        {
            TextBox t = panelParametros.Controls["txtIdReserva"] as TextBox;
            string idR = "1";
            if (t != null && !string.IsNullOrEmpty(t.Text.Trim())) idR = t.Text.Trim();

            string s = "CALL sp_convertir_reserva_a_contrato(" + idR + ", '" + usuario + "', @id_contrato, @mensaje);\n";
            s += "SELECT @id_contrato AS id_contrato, @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaCancelar(string usuario)
        {
            TextBox t = panelParametros.Controls["txtIdReserva"] as TextBox;
            string idR = "1";
            if (t != null && !string.IsNullOrEmpty(t.Text.Trim())) idR = t.Text.Trim();

            string s = "CALL sp_cancelar_reserva(" + idR + ", '" + usuario + "', @mensaje);\n";
            s += "SELECT @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaCargo(string usuario)
        {
            TextBox tc = panelParametros.Controls["txtIdContrato"] as TextBox;
            TextBox tp = panelParametros.Controls["txtPeriodo"] as TextBox;
            TextBox tpr = panelParametros.Controls["txtIdPromocion"] as TextBox;

            string idc = "1";
            if (tc != null && !string.IsNullOrEmpty(tc.Text.Trim())) idc = tc.Text.Trim();

            string periodo = DateTime.Today.ToString("yyyy-MM");
            if (tp != null && !string.IsNullOrEmpty(tp.Text.Trim())) periodo = tp.Text.Trim();

            string promo = "NULL";
            if (tpr != null && !string.IsNullOrEmpty(tpr.Text.Trim())) promo = tpr.Text.Trim();

            string s = "CALL sp_generar_cargo_mensual(" + idc + ", '" + periodo + "', " + promo + ", '" + usuario + "', @id_cargo, @mensaje);\n";
            s += "SELECT @id_cargo AS id_cargo, @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaPago(string usuario)
        {
            TextBox tId = panelParametros.Controls["txtIdCargo"] as TextBox;
            TextBox tMo = panelParametros.Controls["txtMonto"] as TextBox;
            ComboBox cb = panelParametros.Controls["cbMetodoPago"] as ComboBox;
            TextBox tRe = panelParametros.Controls["txtReferencia"] as TextBox;

            string idC = "1";
            if (tId != null && !string.IsNullOrEmpty(tId.Text.Trim())) idC = tId.Text.Trim();

            string monto = "0.00";
            if (tMo != null && !string.IsNullOrEmpty(tMo.Text.Trim())) monto = tMo.Text.Trim();

            string metodo = "EFECTIVO";
            if (cb != null && cb.SelectedItem != null) metodo = cb.SelectedItem.ToString();

            string referencia = "";
            if (tRe != null && !string.IsNullOrEmpty(tRe.Text.Trim())) referencia = tRe.Text.Trim();

            string s = "CALL sp_registrar_pago(" + idC + ", " + monto + ", '" + metodo + "', '" + referencia + "', '" + usuario + "', @id_pago, @mensaje);\n";
            s += "SELECT @id_pago AS id_pago, @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaSuspender(string usuario)
        {
            TextBox t = panelParametros.Controls["txtIdContrato"] as TextBox;
            string idC = "1";
            if (t != null && !string.IsNullOrEmpty(t.Text.Trim())) idC = t.Text.Trim();

            string s = "CALL sp_suspender_contrato(" + idC + ", '" + usuario + "', @mensaje);\n";
            s += "SELECT @mensaje AS mensaje;";
            return s;
        }

        private string ConsultaTerminar(string usuario)
        {
            TextBox tc = panelParametros.Controls["txtIdContrato"] as TextBox;
            TextBox tm = panelParametros.Controls["txtMotivo"] as TextBox;

            string idc = "1";
            if (tc != null && !string.IsNullOrEmpty(tc.Text.Trim())) idc = tc.Text.Trim();

            string motivo = "Terminación de contrato";
            if (tm != null && !string.IsNullOrEmpty(tm.Text.Trim())) motivo = tm.Text.Trim();

            string s = "CALL sp_terminar_contrato(" + idc + ", '" + motivo.Replace("'", "''") + "', '" + usuario + "', @mensaje);\n";
            s += "SELECT @mensaje AS mensaje;";
            return s;
        }

        private bool ValidarPermisos(string usuario, string accion)
        {
            if (PermisosPorUsuario.ContainsKey(usuario))
            {
                if (!PermisosPorUsuario[usuario].Contains(accion))
                {
                    MessageBox.Show(
                        "❌ El usuario '" + usuario + "' NO tiene permiso para:\n\n" + accion,
                        "Acceso Denegado",
                        MessageBoxButtons.OK,
                        MessageBoxIcon.Warning
                    );
                    return false;
                }
            }
            return true;
        }

        private void btnEjecutar_Click(object sender, EventArgs e)
        {
            if (ejecutando) return;
            ejecutando = true;

            try
            {
                string consulta = txtConsulta.Text.Trim();

                if (string.IsNullOrWhiteSpace(consulta))
                {
                    MessageBox.Show("No hay consulta para ejecutar", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                string usuario = ObtenerUsuarioActual();
                string accion = comboAccion.SelectedItem != null ? comboAccion.SelectedItem.ToString() : "";

                if (accion.StartsWith("═══"))
                {
                    MessageBox.Show("Selecciona una acción válida", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                if (!ValidarPermisos(usuario, accion))
                    return;

                using (MySqlConnection conn = new MySqlConnection(cadenaConexion))
                {
                    conn.Open();

                    if (consulta.ToUpper().Contains("CALL "))
                        EjecutarProcedimiento(conn, consulta);
                    else
                        EjecutarConsulta(conn, consulta);
                }
            }
            catch (MySqlException ex)
            {
                string errorCompleto = "❌ Error de MySQL:\n\n";
                errorCompleto += "Mensaje: " + ex.Message + "\n";
                errorCompleto += "Código: " + ex.Number + "\n";
                errorCompleto += "Estado SQL: " + ex.SqlState;
                MessageBox.Show(errorCompleto, "Error de Base de Datos", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            catch (Exception ex)
            {
                MessageBox.Show("❌ Error:\n\n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                ejecutando = false;
            }
        }

        private void EjecutarProcedimiento(MySqlConnection conn, string consulta)
        {
            string[] lineas = consulta.Split(new char[] { '\n', ';' }, StringSplitOptions.RemoveEmptyEntries);
            string callCmd = "";
            string selectCmd = "";

            foreach (string linea in lineas)
            {
                string limpia = linea.Trim();
                if (string.IsNullOrEmpty(limpia)) continue;

                if (limpia.ToUpper().StartsWith("CALL "))
                    callCmd = limpia;
                else if (limpia.ToUpper().StartsWith("SELECT ") && limpia.Contains("@"))
                    selectCmd = limpia;
            }

            if (!string.IsNullOrEmpty(callCmd))
            {
                try
                {
                    using (MySqlCommand cmd = new MySqlCommand(callCmd, conn))
                        cmd.ExecuteNonQuery();
                }
                catch (MySqlException exCall)
                {
                    MessageBox.Show("❌ Error al ejecutar el procedimiento:\n\n" + exCall.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
            }

            if (!string.IsNullOrEmpty(selectCmd))
            {
                using (MySqlCommand cmd = new MySqlCommand(selectCmd, conn))
                {
                    using (MySqlDataAdapter da = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        dataGridViewRespuesta.DataSource = dt;
                        EstilizarDataGridView(dataGridViewRespuesta);

                        if (dt.Rows.Count > 0)
                        {
                            string msg = "✅ Operación Exitosa\n\n";
                            foreach (DataColumn col in dt.Columns)
                            {
                                object val = dt.Rows[0][col];
                                msg += col.ColumnName + ": " + (val == DBNull.Value ? "NULL" : val.ToString()) + "\n";
                            }
                            MessageBox.Show(msg, "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                }
            }
        }

        private void EjecutarConsulta(MySqlConnection conn, string consulta)
        {
            using (MySqlDataAdapter da = new MySqlDataAdapter(consulta, conn))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                dataGridViewRespuesta.DataSource = dt;
                EstilizarDataGridView(dataGridViewRespuesta);
                lblRegistros.Text = "📊 Registros: " + dt.Rows.Count;
            }
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            dataGridViewRespuesta.DataSource = null;
            txtConsulta.Clear();
            lblRegistros.Text = "📊 Registros: 0";
            MessageBox.Show("✅ Resultados limpiados correctamente", "Limpiar", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

    }
}