<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <h1>Liste des opérations crédits : </h1>
                <xsl:for-each select="/releve/operations">
                    <table border="1" width="80%">
                        <tr>
                            <th>Type</th><th>Date</th><th>Montant</th><th>Description</th>
                        </tr>
                        <xsl:for-each select="operation[@type='CREDIT']">
                            <tr>
                                <td><xsl:value-of select="@type"></xsl:value-of></td>
                                <td><xsl:value-of select="@date"></xsl:value-of></td>
                                <td><xsl:value-of select="@montant"></xsl:value-of></td>
                                <td><xsl:value-of select="@description"></xsl:value-of></td>                                                  
                                
                            </tr>                                             
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>