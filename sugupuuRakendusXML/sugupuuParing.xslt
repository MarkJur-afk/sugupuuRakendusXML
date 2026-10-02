<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>
	<!--parameetri määramine-->
	<xsl:param name ="otsing">ll</xsl:param>
	<xsl:param name ="pikkus">5</xsl:param>

    <xsl:template match="/">
       
			<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select ="nimi"/>, 
					
					<xsl:value-of select="@synd"/> :
					<xsl:value-of select ="concat(nimi, ' sünniaasta ', @synd)"/>
					. Vanus - 
					<xsl:value-of select="2026-@synd"/> aastat vana
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li> 1 täht kõikidest nimedest
			<xsl:for-each select ="//inimene">
				<xsl:value-of select ="substring(nimi, 1, 1)"/>, 
			</xsl:for-each>
			</li>
			<li>
				Näita nimed ja tähtade kogused
				<xsl:for-each select ="//inimene">
					<xsl:value-of select ="concat(nimi, ': ', string-length(nimi), ' tähte')"/>,
				</xsl:for-each>
			</li>
		</ol>
		<strong>Näita kõik nimed mis algavad C-tähega: </strong>

		<xsl:for-each select ="//inimene[starts-with(nimi, 'C')]">
			<xsl:value-of select ="nimi"/>, 
		</xsl:for-each>

		<strong>Parameetrite kasutamine</strong><br></br>
		Otsime nimed mis sisaldavad pareemt otsing='ll'<br></br>
		
		<xsl:value-of select="$otsing"/>
		<br></br>
		<xsl:for-each select="//inimene[contains(nimi, $otsing)]">
			<xsl:value-of select="nimi"/>, 
		</xsl:for-each>
		<br></br>

		<strong>Otsime pikkus</strong>
		Otsime pikkus mis sisaldavad pareemt otsing='5'

		<xsl:value-of select="$pikkus"/> ja rohkem 
		<br></br>
		<xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
			<xsl:value-of select="concat(nimi, ' - pikkus: ', string-length(nimi))"/>,
		</xsl:for-each>
		
		<br></br>

		<strong>Kasutame if lause:</strong>
		Iga inimese kohta näita mitmendal oma vanema sünnaastal ta sündis
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select ="nimi"/>
					<xsl:if test="../..">
						 - vanema vanus oli 
						 <xsl:value-of select ="../../@synd -@synd" /> aastat vana
					</xsl:if>
				</li>
			</xsl:for-each>
						  
		</ul>
		<strong>Värvime nimed pikkusega rohkem</strong>
		<table border="1">
			<tr>
				<th>Nimi</th>
			</tr>
		</table>
		<xsl:for-each select="//inimene">
			<tr>
				<td>
					<xsl:if test ="string-length(nimi) > 4">
						<xsl:attribute name="style">
							background-color: green;
						</xsl:attribute>
					</xsl:if>
				</td>
			</tr>
		</xsl:for-each>

		
		
		
		<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Aasta</th>
				<th>Vanus</th>
				<th>Täht</th>
				<th>Viimane täht</th>
				<th>Tähtade arv</th>
			</tr>
			<xsl:for-each select="//inimene">
				<tr>
					<td>
						<xsl:value-of select="nimi"/>
					</td>
					<td>
						<xsl:value-of select="@synd"/>
						/
						<xsl:value-of select="2026 - @synd"/>
					</td>

					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>

					<td>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>

					<td>
						<xsl:value-of select="string-length(nimi)"/>
					</td>

				</tr>

			</xsl:for-each>
		</table>
		
       
    </xsl:template>
</xsl:stylesheet>
