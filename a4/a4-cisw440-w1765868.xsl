<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:output method="html" />
  <xsl:template match="/">

  <html>
    <head>
      <title>Patient List</title>
      <link rel="stylesheet" type="text/css" href="xsl-styles.css" />
    </head>
    <body>
    <table>

      <!-- display table header row -->
      <tr>
        <th>ID</th><th>Full Name</th><th>DOB</th><th>Gender</th>
        <th>Service Date</th><th>Procedure Code</th><th>Primary Diagonsis</th>
      </tr>

  <!-- loop through each patient and display their data -->
  <xsl:for-each select="PatientList/Patient">

    <tr>
    <td><xsl:value-of select="Id" /></td>
    <td><xsl:value-of select="FullName" /></td>
    <td><xsl:value-of select="Dob" /></td>
    <td><xsl:value-of select="Gender" /></td>
    <td><xsl:value-of select="ServiceDate" /></td>
    <td><xsl:value-of select="ProcedureCode" /></td>
    <td><xsl:value-of select="PrimaryDiagnosis" /></td>
    </tr>

  </xsl:for-each>

    </table>
    <br />
    </body>
  </html>

  </xsl:template>
</xsl:stylesheet>
