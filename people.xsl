<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/people">

    <html>
        <body bgcolor="#ffe9d1">
            <h2 align="center">People</h2>
            <table border="1" align="center">
                <tr bgcolor="#add8e6" height="50px"> 
                    <th width="120px">First Name</th>
                    <th width="120px">Last Name</th>                  
                    <th width="120px">Age</th>
                    <th width="120px">Sex</th>
                    <th width="120px">Month</th>
                    <th width="120px">Day</th>
                    <th width="120px">Year</th>                                     
                    <th width="120px">City</th>
                    <th width="120px">Province</th>
                    <th width="120px">Town</th> 
                </tr>         
                <xsl:for-each select="person">
                    <tr bgcolor="#fff" height="30px" align="center">
                        <td><xsl:value-of select="name/Fname"/></td>
                        <td><xsl:value-of select="name/Lname"/></td>
                        <td><xsl:value-of select="age"/></td>
                        <td><xsl:value-of select="sex"/></td>
                        <td><xsl:value-of select="bday/month"/></td>
                        <td><xsl:value-of select="bday/day"/></td>
                        <td><xsl:value-of select="bday/year"/></td>       
                        <td><xsl:value-of select="address/city"/></td>
                        <td><xsl:value-of select="address/province"/></td>
                        <td><xsl:value-of select="address/town"/></td>
                    </tr>
                </xsl:for-each>     
            </table>
        </body>
    </html>


</xsl:template>


</xsl:stylesheet>