<svg width='430' height='380' version="1.1" xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xsl:version='1.1'>

    <!-- ================== Define project specific variables, these are just examples from the gender pay collection ====================== -->
    <!-- EXAMPLE: <xsl:variable name='name' select='/row/value[@colname="Name"]'/> -->
    
    
    <!-- Define your column data -->
    <xsl:variable name='' select='/row/value[@colname=""]'/>
    
    
    <!-- ===================== Select which variables are going to be used in the relevant template areas ================================== -->
    <!-- EXAMPLE: <xsl:variable name='titleText' select='{$name}'/> -->
    <!-- NOTE: If using less than all of these fields, comment out / delete the relevant "Detail #" fields in the "Large panel" section below -->
    
    
    <!-- Present in all sizes -->
    <xsl:variable name='titleText'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE'/></xsl:variable>
    <xsl:variable name='mainImgURL'><xsl:value-of select='$URL_VARIABLE_NAME_HERE'/></xsl:variable>
    
    <!-- Medium panel features -->
    <xsl:variable name='buttonTitleText'>BUTTON_TITLE_TEXT_HERE</xsl:variable>
    <xsl:variable name='buttonMainText'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE}'/></xsl:variable>
    
    <!-- Large panel details -->
    <xsl:variable name='detailTitle0'>TITLE0_TEXT_HERE</xsl:variable>
    <xsl:variable name='detailContent0'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE'/></xsl:variable>
    
    <xsl:variable name='detailTitle1'>TITLE1_TEXT_HERE</xsl:variable>
    <xsl:variable name='detailContent1'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE'/></xsl:variable>
    
    <xsl:variable name='detailTitle2'>TITLE2_TEXT_HERE</xsl:variable>
    <xsl:variable name='detailContent2'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE'/></xsl:variable>
    
    <xsl:variable name='detailTitle3'>TITLE3_TEXT_HERE</xsl:variable>
    <xsl:variable name='detailContent3'><xsl:value-of select='$TEXT_VARIABLE_NAME_HERE'/></xsl:variable>
    
    
    <!-- =================================== Select the color scheme (found on our Zeplin) ================================================= -->
    
    
    <xsl:variable name='colorDark'>#3f017d</xsl:variable>
    <xsl:variable name='colorMid'>#6a50a3</xsl:variable>
    <xsl:variable name='colorLight'>#b5b7d8</xsl:variable>
    <xsl:variable name='colorLightest'>#efebf7</xsl:variable>
    
    
    <!-- =================================================================================================================================== -->
    

    
    <!-- Get the size class of the panel -->
    <xsl:variable name='panelSize' select='/row/@size'/>
    

    <!-- Set the global colors -->
    <xsl:variable name='textTitleColor'>#ffffff</xsl:variable>
    <xsl:variable name='textDetailTitleColor'>#909399</xsl:variable>

    
    <!-- Get the size class of the panel -->
    <xsl:variable name='panelSize' select='/row/@size'/>
    

    <!-- Create panel based on size -->
    <g font-family='sans-serif' letter-spacing='0.6' text-anchor='middle' alignment-baseline='central'>
    
        <rect width='430' height='380' fill='{$colorLightest}'/>
        
        <xsl:choose>
        
            <!-- Small panel -->
            <xsl:when test='$panelSize = "small"'>
                
                <!-- Upper panel -->
                <rect x='21' y='19' width='388' height='90' fill='{$colorDark}'/>
                <text x='215' y='75' width='69' height='30' font-size='28' font-weight='bold' fill='{$textTitleColor}'>
                    <xsl:value-of select='$titleText'/>
                </text>
                
                <!-- Lower panel -->
                <rect x='21' y='111' width='388' height='250' fill='{$colorLight}'/>
                <image x='21' y='111' width='388' height='250' preserveAspectRatio='true' xlink:href='{$mainImgURL}'/>
                
            </xsl:when>
    
    
    
            <!-- Medium panel -->
            <xsl:when test='$panelSize = "medium"'>
                
                <!-- Upper panel -->
                <rect x='21' y='19' width='298' height='90' fill='{$colorDark}'/>
                <text x='170' y='75' width='69' height='30' font-size='28' font-weight='bold' fill='{$textTitleColor}'>
                    <xsl:value-of select='$titleText'/>
                </text>
                
                <!-- Lower panel -->
                <rect x='21' y='111' width='298' height='250' fill='{$colorLight}'/>
                <image x='21' y='111' width='298' height='250' preserveAspectRatio='true' xlink:href='{$mainImgURL}'/>
                
                <!-- Circle label -->
                <circle cx='320' cy='235' r='47' fill='{$colorDark}'/>
                
                <!-- Title -->
                <text x='320' y='210' font-size='16' font-weight='bold' fill='{$textTitleColor}'>
                    <xsl:value-of select='$buttonTitleText'/>
                </text>
                
                <!-- Value -->
                <text x='320' y='245' font-size='42' font-weight='bold' fill='{$textTitleColor}'>
                    <xsl:value-of select='$buttonMainText'/>
                </text>
                    
            </xsl:when>
    
    
    
            <!-- Large panel (otherwise) -->
            <xsl:otherwise>
                
                <!-- Upper panel -->
                <rect x='21' y='19' width='250' height='90' fill='{$colorDark}'/>
                <text x='146' y='75' width='69' height='30' font-size='28' font-weight='bold' fill='{$textTitleColor}'>
                    <xsl:value-of select='$titleText'/>
                </text>
                
                <!-- Lower panel -->
                <rect x='21' y='111' width='250' height='250' fill='{$colorLight}'/>
                <image x='21' y='111' width='250' height='250' preserveAspectRatio='true' xlink:href='{$mainImgURL}'/>
                
                
                <!-- Detail 0 -->
                <text x='347' y='37' width='115' height='25' font-size='15' font-weight='bold' fill='{$textDetailTitleColor}'>
                    <xsl:value-of select='$detailTitle0'/>
                </text>
                <text x='347' y='70' width='115' height='45' font-size='25' font-weight='bold' fill='{$colorDark}'>
                    <xsl:value-of select='$detailContent0'/>
                </text>
                
                
                <!-- Detail 1 -->
                <text x='347' y='127' width='115' height='25' font-size='15' font-weight='bold' fill='{$textDetailTitleColor}'>
                    <xsl:value-of select='$detailTitle1'/>
                </text>
                <text x='347' y='160' width='115' height='45' font-size='25' font-weight='bold' fill='{$colorDark}'>
                    <xsl:value-of select='$detailContent1'/>
                </text>
                
                
                <!-- Detail 2 -->
                <text x='347' y='217' width='115' height='25' font-size='15' font-weight='bold' fill='{$textDetailTitleColor}'>
                    <xsl:value-of select='$detailTitle2'/>
                </text>
                <text x='347' y='250' width='115' height='45' font-size='25' font-weight='bold' fill='{$colorDark}'>
                    <xsl:value-of select='$detailContent2'/>
                </text>
                
                
                <!-- Detail 3 -->
                <text x='347' y='307' width='115' height='25' font-size='15' font-weight='bold' fill='{$textDetailTitleColor}'>
                    <xsl:value-of select='$detailTitle3'/>
                </text>
                <text x='347' y='340' width='115' height='45' font-size='25' font-weight='bold' fill='{$colorDark}'>
                    <xsl:value-of select='$detailContent3'/>
                </text>
                    
            </xsl:otherwise>
            
        </xsl:choose>
    </g>

</svg>