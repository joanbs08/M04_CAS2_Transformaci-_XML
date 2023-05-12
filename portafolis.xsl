<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>portafolis joan</title>
               <link rel="stylesheet" type="text/css" href="styles.css"/>
            </head>
            <body>
            <main>
                <header>
                
                <div class="capçalera">
               
                <h1><strong>Portafolis </strong>
                <xsl:value-of select="portafolis/informacio_personal/nom"/> 
                <xsl:value-of select="portafolis/informacio_personal/cognoms"/>
                </h1>
                </div>

      <div class="menu">
      <nav>
      <ul>
        <li><a href="#">Inici</a></li>
        <li><a href="#projectes">Projectes</a></li>
        <li><a href="#infopersonal">Sobre mi</a></li>
        <li><a href="#Estudis">Estudis</a></li>
      </ul>
      </nav>
      </div>
      </header>

    <section id="infopersonal" class="informacio_personal">
    <h2>Informació personal</h2>
    <table>
    <tr>
      <td>Nom:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/nom"/></td>
    </tr>
    <tr>
      <td>Cognoms:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/cognoms"/></td>
    </tr>
    <tr>
      <td>Edat:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/edat_actual"/></td>
    </tr>
    <tr>
      <td>Ciutat:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/ciutat"/></td>
    </tr>
    <tr>
      <td>Localitat:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/localitat"/></td>
    </tr>
    <tr>
      <td>Telefon:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/telefon"/></td>
    </tr>
    <tr>
      <td>Correu:</td>
      <td><xsl:value-of select="portafolis/informacio_personal/correu"/></td>
    </tr>
    </table>
    </section>

   <section class="foto_perfil">  
    <xsl:element name="img">
        <xsl:attribute name="src">
        <xsl:value-of select="portafolis/informacio_personal/foto_perfil"/>
        </xsl:attribute>
    </xsl:element>
   </section>
      
    <section id="Estudis" class="cicle">
    <xsl:for-each select="portafolis/educacio/cicles">
        
            <h3>Cicle: <xsl:value-of select="cicle"/></h3>
            <p>Institut: <xsl:value-of select="institut"/></p>
            <p>Duració cicle: <xsl:value-of select="any"/></p>
    </xsl:for-each>
     </section>

        <div class="contenedor">
            <div id="projectes">
            <h2> Ultims projectes:</h2>
        <xsl:for-each select="//modul/UFS/*">
        <h3><xsl:value-of select="nom"/></h3>
        <xsl:for-each select=".//activitat">
         <p><xsl:value-of select="."/></p>
         <xsl:choose>
            <xsl:when test="img">
               <img src="{img/@src}"/>
            </xsl:when>
            </xsl:choose>
        </xsl:for-each>
        </xsl:for-each>
            </div>
        </div>
        </main>

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
