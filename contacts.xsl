<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Personal Contact Book</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                    tr:hover {
                        background-color: #f1f1f1;
                    }
                </style>
            </head>
            <body>
                <h1>Personal Contact Book</h1>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Category</th>
                    </tr>
                    <xsl:for-each select="contacts/contact">
                        <tr>
                            <td><xsl:value-of select="name" /></td>
                            <td><xsl:value-of select="phone" /></td>
                            <td><xsl:value-of select="email" /></td>
                            <td>
                                <xsl:value-of select="address/street" /><br />
                                <xsl:value-of select="address/city" />, 
                                <xsl:value-of select="address/state" /> 
                                <xsl:value-of select="address/zip" />
                            </td>
                            <td><xsl:value-of select="category" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
