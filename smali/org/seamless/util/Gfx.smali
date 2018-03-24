.class public Lorg/seamless/util/Gfx;
.super Ljava/lang/Object;
.source "Gfx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getTransparency()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v7, v0

    .line 104
    :goto_0
    if-eqz p4, :cond_3

    .line 108
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 109
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    move-object v1, p0

    .line 118
    :goto_1
    if-eqz p4, :cond_0

    if-le v4, p1, :cond_0

    .line 119
    div-int/lit8 v4, v4, 0x2

    .line 120
    if-ge v4, p1, :cond_0

    move v4, p1

    .line 125
    :cond_0
    if-eqz p4, :cond_1

    if-le v5, p2, :cond_1

    .line 126
    div-int/lit8 v5, v5, 0x2

    .line 127
    if-ge v5, p2, :cond_1

    move v5, p2

    .line 132
    :cond_1
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-direct {p0, v4, v5, v7}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 133
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 134
    sget-object v3, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {v0, v3, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 135
    const/4 v6, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 136
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 139
    if-ne v4, p1, :cond_4

    if-ne v5, p2, :cond_4

    .line 141
    return-object p0

    .line 100
    :cond_2
    const/4 v0, 0x2

    move v7, v0

    goto :goto_0

    :cond_3
    move v4, p1

    move-object v1, p0

    move v5, p2

    .line 114
    goto :goto_1

    :cond_4
    move-object v1, p0

    goto :goto_1
.end method

.method public static resizeProportionally(Ljavax/swing/ImageIcon;Ljava/lang/String;II)[B
    .locals 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v0

    if-eq p2, v0, :cond_2

    int-to-double v0, p2

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v0, v6

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    if-eq p3, v3, :cond_0

    int-to-double v4, p3

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    .line 44
    :cond_0
    cmpg-double v3, v0, v4

    if-gez v3, :cond_3

    .line 45
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v0, v4

    double-to-int p3, v0

    .line 50
    :goto_1
    const-string v0, "image/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    .line 54
    :goto_2
    new-instance v7, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v1

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    invoke-direct {v7, v1, v3, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 55
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v4

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v5

    const/4 v6, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 57
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 59
    sget-object v0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    invoke-static {v7, p2, p3, v0, v2}, Lorg/seamless/util/Gfx;->getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 62
    const-string v0, ""

    .line 63
    const-string v2, "image/png"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    const-string v0, "png"

    .line 68
    :cond_1
    :goto_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 69
    invoke-static {v1, v0, v2}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 70
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_2
    move-wide v0, v4

    .line 36
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int p2, v0

    goto :goto_1

    .line 50
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 65
    :cond_5
    const-string v2, "image/jpeg"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "image/jpg"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    :cond_6
    const-string v0, "jpeg"

    goto :goto_3
.end method
