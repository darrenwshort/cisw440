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
        <th>Full Name Character Length</th>
      </tr>

  <!-- loop through each patient and display their data -->
  <xsl:for-each select="PatientList/Patient">

    <!-- sort Patient table by Full Name -->
    <xsl:sort select="FullName" order="descending" />

    <tr>
    <td><xsl:value-of select="Id" /></td>
    <td><xsl:value-of select="FullName" /></td>
    <td><xsl:value-of select="Dob" /></td>
    <td><xsl:value-of select="Gender" /></td>
    <td><xsl:value-of select="ServiceDate" /></td>
    <td><xsl:value-of select="ProcedureCode" /></td>
    <td><xsl:value-of select="PrimaryDiagnosis" /></td>
    <td><xsl:value-of select="string-length(FullName)" /></td>
    </tr>

  </xsl:for-each>

    </table>
    <br />

    <!-- say something about 1st patient node -->
    <xsl:value-of select="PatientList/Patient/FullName" /> is a male born on 
    <xsl:value-of select="PatientList/Patient/Dob" /> that was seen at the doctor's office on
    <xsl:value-of select="PatientList/Patient/ServiceDate" /> for diagnosis 
    <xsl:value-of select="PatientList/Patient/PrimaryDiagnosis" />.

    </body>
  </html>

  </xsl:template>
</xsl:stylesheet>
