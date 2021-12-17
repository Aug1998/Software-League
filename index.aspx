<%@ Page Language="C#" %>
<%@ Import namespace="System" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Linq" %>
<%@ Import namespace="System.Web" %>
<%@ Import namespace="System.Web.UI" %>
<%@ Import namespace="System.Web.UI.WebControls" %>
<%@ Import namespace="System.Net.Mail" %>


<!DOCTYPE html>
<html lang="en">
    
    <script runat="server" language="c#">

        protected void Page_Load(object sender, EventArgs e){
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void form_send_Click(object sender, EventArgs e){
            string input_email = form_email.Text;
            if (IsValidEmail(input_email))
            {

                try
                {
                    string smtp_user = ""; // mail
                    string smtp_password = ""; // contraseña

                    MailMessage mail = new MailMessage(input_email, smtp_user);
                    mail.IsBodyHtml = true;
                    mail.Subject = "test";
                    mail.Body = "<b>Nombre:</b> " + form_name.Text + "<br>" +
                        "<b>Email:</b> " + form_email.Text + "<br><br>" +
                        "<b>Mensaje:</b> " + form_message.Text;

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.Credentials = new System.Net.NetworkCredential(smtp_user, smtp_password);
                    client.Send(mail);

                    form_name.Text = "";
                    form_email.Text = "";
                    form_message.Text = "";

                }
                catch (Exception ex)
                {
                }
            }
            else {
            }

        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

</script>

    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Software development Rosario">
    <link rel="icon" type="image/ico" href="./res/favicon.ico"/>
    <title>Software League</title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-0PD993MPBQ"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'G-0PD993MPBQ');
    </script>
    <!--CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css"/>
    <link rel="stylesheet" href="css/style.css">
    <!--LIBRERIAS-->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
</head>

<body>

  <!--Top Navbar-->
  <div class="navbar">
      <div class="nav_main">
          <!--Logo-->
          <a class="logo" href="#"><img src="/res/logo-navbar.png" alt="Software League Brand Logo"></a>
          
          <div class="menu_btn">
              <svg width="100%" heigh="100%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 384 384" xml:space="preserve">
                  <rect x="0" y="277.333" width="384" height="42.667"/>
                  <rect x="0" y="170.667" width="384" height="42.667"/>
                  <rect x="0" y="64" width="384" height="42.667"/>
              </svg>
          </div>
      </div>

      <!--Nav-->
      <div class="nav">
          <a class="mobile_nav_item" href="#" id="services_btn">Services</a>
          <a class="mobile_nav_item" href="#" id="whyus_btn">Why us</a>
          <a class="mobile_nav_item" href="#" id="about_btn">About</a>
          <a class="mobile_nav_item nav_contactus" href="#" id="contact_btn">Contact us</a>
          <a class="mobile_nav_item nav_linkedin" href="https://www.linkedin.com/company/swl-software-league/" target="_blank"><img src="./res/linkedin.png" alt=""></a>
          <div class="phone nav_phone">
          <svg width="22px" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 513.64 513.64" xml:space="preserve">
              <path d="M499.66,376.96l-71.68-71.68c-25.6-25.6-69.12-15.359-79.36,17.92c-7.68,23.041-33.28,35.841-56.32,30.72
              c-51.2-12.8-120.32-79.36-133.12-133.12c-7.68-23.041,7.68-48.641,30.72-56.32c33.28-10.24,43.52-53.76,17.92-79.36l-71.68-71.68
              c-20.48-17.92-51.2-17.92-69.12,0l-48.64,48.64c-48.64,51.2,5.12,186.88,125.44,307.2c120.32,120.32,256,176.641,307.2,125.44
              l48.64-48.64C517.581,425.6,517.581,394.88,499.66,376.96z"/>
          </svg>
          <p>+1 585 568 7923</p>
          </div>
      </div>
  </div>

  <!--flechas del hero div-->
  <div class="arrows hero_arrows">
    <!--flecha izquierda-->
    <div id="hero_left" class="flecha">
      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
      viewBox="0 0 492 492" style="enable-background:new 0 0 492 492;" xml:space="preserve">
      <g>
        <path d="M198.608,246.104L382.664,62.04c5.068-5.056,7.856-11.816,7.856-19.024c0-7.212-2.788-13.968-7.856-19.032l-16.128-16.12
          C361.476,2.792,354.712,0,347.504,0s-13.964,2.792-19.028,7.864L109.328,227.008c-5.084,5.08-7.868,11.868-7.848,19.084
          c-0.02,7.248,2.76,14.028,7.848,19.112l218.944,218.932c5.064,5.072,11.82,7.864,19.032,7.864c7.208,0,13.964-2.792,19.032-7.864
          l16.124-16.12c10.492-10.492,10.492-27.572,0-38.06L198.608,246.104z"/>
      </g>
      </svg>
    </div>

    <!--flecha derecha-->
    <div id="hero_right" class="flecha">
      <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 492.004 492.004" xml:space="preserve">
      <g>
        <path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12
          c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028
          c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265
          c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z"/>
      </g>
      </svg>
    </div>

  </div>
  <!--fin de flechas-->
  <!--hero div-->
  <div class="hero" id="bg_photo">
    <!--div SLIDER-->
    <div class="hero_slider">
      <!--SLIDER 1-->
       <div class="hero_slider_item">
        <div class="bg_color"></div>
          <div class="hero_slider_item_content">
            <h1>Software outsourcing</h1>
            <h5>At SWL we are ready to offer reliable and personalized solutions, 
            <br>from development on existing platforms to large scale system development with full cycles. 
            </h5>
            <button type="button" class="btn btn-primary contact_us_btn">CONTACT US</button>
          </div>
        </div>

      <!--SLIDER 2-->
      <div class="hero_slider_item">
        <div class="hero_slider_item_content">
          <h1>IT Staff Augmentation</h1>
          <h5>One of our most important assets is having a team specialized on seeking IT resources. We take pride in providing all the necessary positions to complete a team, integrating it and working hand in hand with our clients.</h5>
          <button type="button" class="btn btn-primary contact_us_btn">CONTACT US</button>
        </div>
      </div>

      <!--SLIDER 3-->
      <div class="hero_slider_item">
        <div class="hero_slider_item_content">
          <h1>Dedicated Team</h1>
          <h5>We provide you with an incredible team of professionals that offers IT solutions. Our preferred methodology is Agile, since it integrates the needs and requirements of your company and allows for a more organized outcome.</h5>
          <button type="button" class="btn btn-primary contact_us_btn">CONTACT US</button>
        </div>
      </div>

       
      
  </div>
  </div>
  <!--fin del hero-->

  <!--Servicios-->
  <div class="services_outer">
    <div class="services_inner">
      <div class="section_top">
        <div class="section_title">
          <h2>Services</h2>
        </div>
      </div>
    <div class="services_content">
    <!--Staff Augmentation-->
      <div class="services_item" 
      data-aos="fade-up"
      data-aos-delay="0"
      data-aos-duration="750"
      data-aos-anchor-placement="top-bottom">
        <img src="/res/icons/ico-brujula.png" alt="">
        <h4>Staff augmentation</h4>
        <p>One of our most important assets is having a team specialized on seeking IT resources. We take pride in providing all the necessary positions to complete a team, integrating it and working hand in hand with our clients.  
          </p>
      </div><!--Fin de Staff augmentation-->
      <!--Software Outsourcing-->
        <div class="services_item"
        data-aos="fade-up"
        data-aos-delay="400"
        data-aos-duration="800"
        data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ico-puntos.png" alt="">
          <h4>Software outsourcing</h4>
          <p>At SWL we are ready to offer reliable and personalized solutions, from development on existing platforms to large scale system development with full cycles. 
            </p>
        </div><!--Fin de Software Outsourcing-->
    <!--Dedicated Team-->
      <div class="services_item"
      data-aos="fade-up"
      data-aos-delay="800"
      data-aos-duration="750"
      data-aos-anchor-placement="top-bottom">
      <img style="margin-top: -5px;" src="/res/icons/ico-manos.png" alt="">
      <h4>Dedicated Team</h4>
      <p>We provide you with an incredible team of professionals that offers IT solutions. Our preferred methodology is agile, since it integrates the needs and requirements of your company and allows for a more organized outcome.
      </p>
      </div><!--Fin de Dedicated Team-->
    </div>
    </div>
  </div>
  <!--Fin de Servicios-->

  <!--Why Us-->
  <div class="whyus_outer">
    <div class="whyus_inner">
    <div class="section_top">
      <div class="section_title"><h2>Why Us</h2></div>
      <p>Most of the benefits you can obtain from working with a software development center overseas are related to a logical cost reduction. 
      <br>However, our aim is not only for you to reduce costs, but to offer a wide range of additional benefits.</p>
    </div>

      <!--Flexibility and scalability-->
      <div class="whyus_content">
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-01.png" alt="">
          <div class="whyus_item_text">
            <h4>Flexibility and scalability</h4>
            <p>Our highly qualified team is prepared to solve the most complex challenges. Therefore, we can offer you the possibility of easily increasing or decreasing resources to suit your every need. 
            </p>
          </div>
        </div>

        <!--IT Talent-->
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-02.png" alt="">
          <div class="whyus_item_text">
            <h4>IT Talent</h4>
            <p>We have an extremely thorough recruiting process. As a result, our team is made up of only the most talented IT profiles.
            </p>
          </div>
        </div>
        
        <!--Your time zone is our time zone-->
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-03.png" alt="">
          <div class="whyus_item_text">
            <h4>Your time zone is our time zone</h4>
            <p>Our talented team begins its day at USA business hours. This not only favours communication with you, but also a perfect integration.
            </p>
          </div>
        </div>

        <!--Innovation and quality-->
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-04.png" alt="">
          <div class="whyus_item_text">
            <h4>Innovation and quality</h4>
            <p>Innovation and quality are two of our main values. We will find highly qualified professionals according to the highest standards in software development for you and your company, taking into account your needs on every step of the process. 
            </p>  
          </div>
        </div>

        <!--You can focus on your business-->
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-05.png" alt="">
          <div class="whyus_item_text">
            <h4>You can focus on your business</h4>
            <p>Whether your IT department is not adequatly trained on software technologies or you do not have the additional resources you need, your options on how to incorporate a new function will be restricted. 
            </p>  
          </div>
        </div>

        <!--Cost reduction-->
        <div class="whyus_item" data-aos="fade-right" data-aos-delay="200" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
          <img src="/res/icons/ICONOS-06.png" alt="">
          <div class="whyus_item_text">
            <h4>Cost reduction</h4>
            <p>One of the most important advantages of hiring us is that you do not have the responsibility to create or manage development teams or infrastructure. We see to that and a lot more at extremely competitive rates.  
          </div>
        </div>




      </div>
    </div>
  </div>
  <!--Fin de Why Us-->

  <!--About-->
  <div class="about_section">
    <div class="section_title">
      <h2>About Us</h2>
    </div>
      <p>SWL is an HHRR company, specialized in IT that delivers efficient tech solutions. 
      <br>
      <br>
      We are a company established and directed by technology and talent driven professionals. 
      <br>We take pride in our leadership and agile ‘can do’ mindset.    
      </p>
  </div>
  <!--Fin de About-->

  <!--Nuestra Vision/Mision-->
  <div class="nuestra">
    <div class="nuestra_mision" data-aos="fade-right" data-aos-delay="350" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
      <p><span>Our mission </span>
        <br>To understand your needs and to focus on providing you with the best IT solution. </p>
    </div>
    <div class="nuestra_vision"data-aos="fade-left" data-aos-delay="350" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
      <p><span>Our vision </span>
        <br>To be a strategic technological partner to your company and to generate an impact on your company’s growth. </p>
    </div>
    <div class="nuestra_vision mobile"data-aos="fade-right" data-aos-delay="350" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
      <p><span>Our vision </span>
        <br>To be a strategic technological partner to your company and to generate an impact on your company’s growth. </p>
    </div>
  </div>
  <!--Fin de Nuestra Vision/Mision-->

  <!--Nuestros Valores-->
  <div class="our_values">
    <div id="our_values_logo">
      <img src="./res/logo-desc.png" alt="Software League Brand Logo">
    </div>
    <div class="values_right">
      <div class="section_title">
        <h2>Our Values</h2>
      </div>
      <div>
        <h5>Client-oriented</h5>
        <p>Being versatile</p>
        <h5>Team work</h5>
        <p>Sharing</p>
        <h5>Professionalism</h5>
        <p>Fulfilling your requirements</p>
        <h5>Enthusiasm and Commitment</h5>
        <p>Innovating</p>
      </div>
    </div>
  </div>
  <!--Fin de Nuestros Valores-->

  <div class="brands_section">
    <div class="section_title">
      <h2>These companies <span><br></span> relied on our professionals</h2>
    </div>
    <div class="brands">
      <div class="brands_item" ><img src="./res/brands/tcc.png" alt=""></div>
      <div class="brands_item" ><img src="./res/brands/underarmour.jpg" alt=""></div>
      <div class="brands_item" ><img src="./res/brands/uni.jpg" alt=""></div>
      <div class="brands_item" ><img src="./res/brands/alleson.jpg" alt=""></div>
      <div class="brands_item" ><img src="./res/brands/comafi.png" alt=""></div>
    </div>
  </div>

  <!--Staff-->
  <div class="staff_outer">
    <div class="staff_inner" data-aos="fade-right" data-aos-delay="300" data-aos-duration="750" data-aos-anchor-placement="top-bottom">
      <div class="">
        <a href="https://www.linkedin.com/in/marcos-skverer/" target="_blank">
          <div class="staff_card">
            <img class="staff_photo" src="./res/staff/marcos.png" alt="Marcos Skeverer Profile Picture">
            <div class="card_body">
              <h4>Marcos Skverer</h4>
              <h5>CEO CO-FOUNDER</h5>
              <div class="staff_linkedin">
                <svg width="22px" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 382 382" style="enable-background:new 0 0 382 382;" xml:space="preserve">
                  <path style="fill:white;" d="M347.445,0H34.555C15.471,0,0,15.471,0,34.555v312.889C0,366.529,15.471,382,34.555,382h312.889
                  C366.529,382,382,366.529,382,347.444V34.555C382,15.471,366.529,0,347.445,0z M118.207,329.844c0,5.554-4.502,10.056-10.056,10.056
                  H65.345c-5.554,0-10.056-4.502-10.056-10.056V150.403c0-5.554,4.502-10.056,10.056-10.056h42.806
                  c5.554,0,10.056,4.502,10.056,10.056V329.844z M86.748,123.432c-22.459,0-40.666-18.207-40.666-40.666S64.289,42.1,86.748,42.1
                  s40.666,18.207,40.666,40.666S109.208,123.432,86.748,123.432z M341.91,330.654c0,5.106-4.14,9.246-9.246,9.246H286.73
                  c-5.106,0-9.246-4.14-9.246-9.246v-84.168c0-12.556,3.683-55.021-32.813-55.021c-28.309,0-34.051,29.066-35.204,42.11v97.079
                  c0,5.106-4.139,9.246-9.246,9.246h-44.426c-5.106,0-9.246-4.14-9.246-9.246V149.593c0-5.106,4.14-9.246,9.246-9.246h44.426
                  c5.106,0,9.246,4.14,9.246,9.246v15.655c10.497-15.753,26.097-27.912,59.312-27.912c73.552,0,73.131,68.716,73.131,106.472
                  L341.91,330.654L341.91,330.654z"/>
                </svg>
                <p>LinkedIn Profile</p>
              </div>
            </div>
          </div>
        </a>

      </div>
      <div class="">
        <a href="https://www.linkedin.com/in/floressebastian/" target="_blank">
          <div class="staff_card">
            <img class="staff_photo" src="./res/staff/sebastian.png" alt="Sebastián Flores Tedesco Profile Picture">
            <div class="card_body">
              <h4>Sebastián Tedesco</h4>
              <h5>CTO</h5>
              <div class="staff_linkedin">
                <svg width="22px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 382 382" style="enable-background:new 0 0 382 382;" xml:space="preserve">
                  <path style="fill:white;" d="M347.445,0H34.555C15.471,0,0,15.471,0,34.555v312.889C0,366.529,15.471,382,34.555,382h312.889
                  C366.529,382,382,366.529,382,347.444V34.555C382,15.471,366.529,0,347.445,0z M118.207,329.844c0,5.554-4.502,10.056-10.056,10.056
                  H65.345c-5.554,0-10.056-4.502-10.056-10.056V150.403c0-5.554,4.502-10.056,10.056-10.056h42.806
                  c5.554,0,10.056,4.502,10.056,10.056V329.844z M86.748,123.432c-22.459,0-40.666-18.207-40.666-40.666S64.289,42.1,86.748,42.1
                  s40.666,18.207,40.666,40.666S109.208,123.432,86.748,123.432z M341.91,330.654c0,5.106-4.14,9.246-9.246,9.246H286.73
                  c-5.106,0-9.246-4.14-9.246-9.246v-84.168c0-12.556,3.683-55.021-32.813-55.021c-28.309,0-34.051,29.066-35.204,42.11v97.079
                  c0,5.106-4.139,9.246-9.246,9.246h-44.426c-5.106,0-9.246-4.14-9.246-9.246V149.593c0-5.106,4.14-9.246,9.246-9.246h44.426
                  c5.106,0,9.246,4.14,9.246,9.246v15.655c10.497-15.753,26.097-27.912,59.312-27.912c73.552,0,73.131,68.716,73.131,106.472
                  L341.91,330.654L341.91,330.654z"/>
                </svg>
                <p>LinkedIn Profile</p>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
  <!--Fin de Staff-->

  <!--Prefooter y footer-->
  <div id="footer-bg">
    <!--SECCION DE FORMULARUIO DE CONTACTO-->
    <div class="pre-footer">
      <div class="contact container-fluid d-flex flex-lg-row flex-sm-column justify-content-between">
        <!--formulario-->
        <div class="form-section container">
          <div class="section_title">
            <h2>Contact Us</h2>
          </div>
                  <form id="form1" runat="server">
              <!--Nombre-->
              <div class="form-group">
              <label for="form_name">Name</label>
              <asp:TextBox ID="form_name" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
                  <asp:RequiredFieldValidator id="Required_name"
                      ControlToValidate="form_name"
                      Display="Static"
                      runat="server"/> 
              </div>

              <!--Email-->
              <div class="form-group">
              <label for="form_email">Email</label>
              <asp:TextBox ID="form_email" runat="server" CssClass="form-control" MaxLength="30"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator1"
                      ControlToValidate="form_email"
                      Display="Static"
                      runat="server"/> 
              </div>

              <!--Mensaje-->
              <div class="form-group">
              <label for="form_message">Message</label>
              <asp:TextBox ID="form_message" runat="server" CssClass="form-control" TextMode="MultiLine" Height="125px" MaxLength="600"></asp:TextBox>
                  <asp:RequiredFieldValidator id="RequiredFieldValidator2"
                      ControlToValidate="form_message"
                      Display="Static"
                      runat="server"/> 
              </div>

              <div class="g-recaptcha" data-sitekey="6LdyVzYaAAAAAOjCvLypkPAOSooAXI2zt44J2ZX0"></div>
              <!--Boton de enviar-->
              <asp:Button ID="form_send" runat="server" Text="Send" onClick="form_send_Click" CssClass="btn btn-primary"/>
              </form>
        </div>
        <!--fin de formulario-->
        
      
        <!--info de contacto-->
        <div class="form-right">
          <h4>Need to reach us? <span>Give us a call</span></h4>
          <div class="phone">
            <svg width="22px" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 513.64 513.64" xml:space="preserve">
              <path d="M499.66,376.96l-71.68-71.68c-25.6-25.6-69.12-15.359-79.36,17.92c-7.68,23.041-33.28,35.841-56.32,30.72
              c-51.2-12.8-120.32-79.36-133.12-133.12c-7.68-23.041,7.68-48.641,30.72-56.32c33.28-10.24,43.52-53.76,17.92-79.36l-71.68-71.68
              c-20.48-17.92-51.2-17.92-69.12,0l-48.64,48.64c-48.64,51.2,5.12,186.88,125.44,307.2c120.32,120.32,256,176.641,307.2,125.44
              l48.64-48.64C517.581,425.6,517.581,394.88,499.66,376.96z"/>
            </svg>
            <p>+1 585 568 7923</p>
          </div>
        </div>
        <!--END info de contacto-->

      </div>
    </div><!--Fin de Seccion Contacto-->

    <!--footer-->
    <footer>
      <div id="footer-logo">
        <a href=""></a>
      </div>

      <div class="phone">
          <svg width="22px" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 513.64 513.64" xml:space="preserve">
              <path d="M499.66,376.96l-71.68-71.68c-25.6-25.6-69.12-15.359-79.36,17.92c-7.68,23.041-33.28,35.841-56.32,30.72
              c-51.2-12.8-120.32-79.36-133.12-133.12c-7.68-23.041,7.68-48.641,30.72-56.32c33.28-10.24,43.52-53.76,17.92-79.36l-71.68-71.68
              c-20.48-17.92-51.2-17.92-69.12,0l-48.64,48.64c-48.64,51.2,5.12,186.88,125.44,307.2c120.32,120.32,256,176.641,307.2,125.44
              l48.64-48.64C517.581,425.6,517.581,394.88,499.66,376.96z"/>
          </svg>
          <p>+1 585 568 7923</p>
          </div>

      <div id="to_top">
        <a href="#" onclick="scrollToTop()">BACK TO TOP</a>
      </div>
      
    </footer>
    <!--Fin de Footer-->
  </div>
  <!--Fin de Prefooter y Footer-->

  <div class="popup_bg">
      <div class="popup">
          <h2>Software-League</h2>
          <p>Thanks for your message, we will get in contact with you soon.
            <br>
            <br>
            The page will now reload
          </p>
          <div><button class="popup_ok nav_contactus">Ok</button></div>
      </div>
  </div>

  <!--SCRIPTS-->
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
  <script src="scripts.js"></script>
  <script src="sliders.js" type="module"></script>

</body>
</html>