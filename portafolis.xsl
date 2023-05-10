<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:template match="/">
    <html>
      <head>
        <title>Portafolis Joan Bayarri</title>
        
        <link href="styles.css" rel="stylesheet" type="text/css" />
      </head>

      <body>
      <header>
      
      <div class="capçalera">
        <img src="{portafolis/informacio_personal/foto}" alt="Foto de Joan"/>
        <!-- <h1>Portafolis Joan Bayarri Subirats</h1>  -->
      <h1><strong>Portafolis </strong>
          <xsl:value-of select="portafolis/informacio_personal/nom"/> 
          <xsl:value-of select="portafolis/informacio_personal/cognoms"/>
      </h1>
      </div>

      <nav>
      <ul>
        <li><a href="#">Inici</a></li>
        <li><a href="#">Projectes</a></li>
        <li><a href="#">Curriculum</a></li>
        <li><a href="#">Contacte</a></li>
      </ul>
      </nav>

      </header>

      <section class="informacio_personal">
        <ul>
        <h2>Informacio personal</h2>
        <li>Nom: <xsl:value-of select="portafolis/informacio_personal/nom"/></li>
        <li>Cognoms: <xsl:value-of select="portafolis/informacio_personal/cognoms"/></li>
        <li>Edat: <xsl:value-of select="portafolis/informacio_personal/edat_actual"/></li>
        <li>Ciutat: <xsl:value-of select="portafolis/informacio_personal/ciutat"/></li>
        <li>Localitat: <xsl:value-of select="portafolis/informacio_personal/localitat"/></li>
        <li>Telefon: <xsl:value-of select="portafolis/informacio_personal/telefon"/></li>
        <li>Correu: <xsl:value-of select="portafolis/informacio_personal/correu"/></li>
        </ul>
      </section>
      
      <hr/>

<h2>Educacio</h2>
  <xsl:for-each select="portafolis/educacio/cicles">
    <section class="cicle">
      <h3>Cicle: <xsl:value-of select="cicle"/></h3>
      <p>Institut: <xsl:value-of select="institut"/></p>
      <p>Duració cicle: <xsl:value-of select="any"/></p>
    </section>
  </xsl:for-each>

  <hr/>

  <xsl:for-each select="portafolis/UFS/*">
    <xsl:for-each select="projecte">     
      <section class="projectes">
        <p>Nom UF: <xsl:value-of select="../nom"/></p>
        <p>Nom del cas: <xsl:value-of select="nom"/></p>
        <p>Descripcio del cas: <xsl:value-of select="descripcio"/></p>
        <p>Data inicial del projecte: <xsl:value-of select="data_inici"/></p>
        <p>Data final del projecte: <xsl:value-of select="data_final"/></p>
        <br/>
        <xsl:value-of select="link"/>
      </section>
    </xsl:for-each>
  </xsl:for-each>

    <footer>
    <p>@copyright; 2023 Portafoli activitats 
      <xsl:value-of select="portafolis/informacio_personal/nom"/> 
      <xsl:value-of select="portafolis/informacio_personal/cognoms"/>
    </p>
    </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>