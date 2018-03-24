.class public abstract Lorg/seamless/xml/DOMParser;
.super Ljava/lang/Object;
.source "DOMParser.java"

# interfaces
.implements Lorg/xml/sax/EntityResolver;
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/seamless/xml/DOM;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/xml/sax/EntityResolver;",
        "Lorg/xml/sax/ErrorHandler;"
    }
.end annotation


# static fields
.field public static final XML_SCHEMA_RESOURCE:Ljava/net/URL;

.field private static log:Ljava/util/logging/Logger;


# instance fields
.field protected schema:Ljavax/xml/validation/Schema;

.field protected schemaSources:[Ljavax/xml/transform/Source;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const-class v0, Lorg/seamless/xml/DOMParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org/seamless/schemas/xml.xsd"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    sput-object v0, Lorg/seamless/xml/DOMParser;->XML_SCHEMA_RESOURCE:Ljava/net/URL;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser;-><init>([Ljavax/xml/transform/Source;)V

    .line 84
    return-void
.end method

.method public constructor <init>([Ljavax/xml/transform/Source;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    .line 88
    return-void
.end method

.method public static accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V
    .locals 5

    .prologue
    .line 552
    if-nez p0, :cond_1

    .line 564
    :cond_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 555
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 556
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 557
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-static {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->access$000(Lorg/seamless/xml/DOMParser$NodeVisitor;)S

    move-result v4

    if-ne v3, v4, :cond_2

    .line 559
    invoke-virtual {p1, v2}, Lorg/seamless/xml/DOMParser$NodeVisitor;->visit(Lorg/w3c/dom/Node;)V

    .line 560
    invoke-virtual {p1}, Lorg/seamless/xml/DOMParser$NodeVisitor;->isHalted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 562
    :cond_2
    invoke-static {v2, p1}, Lorg/seamless/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 493
    invoke-static {p0, v0, v0}, Lorg/seamless/xml/DOMParser;->escape(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 497
    if-nez p0, :cond_1

    move-object v0, v2

    .line 543
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 501
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 503
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 504
    sparse-switch v5, :sswitch_data_0

    move-object v3, v2

    .line 518
    :goto_2
    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 506
    :sswitch_0
    const-string v3, "&#60;"

    goto :goto_2

    .line 509
    :sswitch_1
    const-string v3, "&#62;"

    goto :goto_2

    .line 512
    :sswitch_2
    const-string v3, "&#38;"

    goto :goto_2

    .line 515
    :sswitch_3
    const-string v3, "&#34;"

    goto :goto_2

    .line 521
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 524
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    if-eqz p2, :cond_6

    .line 527
    const-string v2, "(\\n+)(\\s*)(.*)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 528
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 532
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 533
    const-string v6, "&#160;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 535
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "$1"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "$3"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_4

    .line 537
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_6
    if-eqz p1, :cond_0

    .line 541
    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 504
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static stripElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<([a-zA-Z]|/).*?>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/seamless/xml/DOMParser;->wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")TD;"
        }
    .end annotation
.end method

.method public createDocument()Lorg/seamless/xml/DOM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .prologue
    .line 122
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 129
    if-eqz p1, :cond_0

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 136
    const-string v1, "http://apache.org/xml/features/xinclude/fixup-base-uris"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 137
    const-string v1, "http://apache.org/xml/features/xinclude/fixup-language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    .line 141
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 152
    const-string v1, "http://apache.org/xml/features/validation/dynamic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;
    .locals 3

    .prologue
    .line 164
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    if-lez p2, :cond_0

    .line 168
    :try_start_1
    const-string v1, "indent-number"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 175
    const-string v2, "omit-xml-declaration"

    if-eqz p3, :cond_3

    const-string v0, "no"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    if-eqz p3, :cond_1

    .line 180
    :try_start_3
    const-string v0, "http://www.oracle.com/xml/is-standalone"

    const-string v2, "yes"

    invoke-virtual {v1, v0, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 186
    :cond_1
    :goto_2
    :try_start_4
    const-string v2, "indent"

    if-lez p2, :cond_4

    const-string v0, "yes"

    :goto_3
    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-lez p2, :cond_2

    .line 188
    const-string v0, "{http://xml.apache.org/xslt}indent-amount"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_2
    const-string v0, "method"

    invoke-virtual {v1, v0, p1}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-object v1

    .line 175
    :cond_3
    const-string v0, "yes"

    goto :goto_1

    .line 186
    :cond_4
    const-string v0, "no"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public createXPath(Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->createXPathFactory()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 310
    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 311
    return-object v0
.end method

.method public createXPath(Ljavax/xml/xpath/XPathFactory;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/xpath/XPath;
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    .line 316
    invoke-interface {v0, p2}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 317
    return-object v0
.end method

.method public createXPathFactory()Ljavax/xml/xpath/XPathFactory;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    return-object v0
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/seamless/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, p1}, Lorg/seamless/xml/ParserException;-><init>(Lorg/xml/sax/SAXParseException;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    if-nez v0, :cond_0

    .line 96
    :try_start_0
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    .line 98
    new-instance v1, Lorg/seamless/xml/CatalogResourceResolver;

    new-instance v2, Lorg/seamless/xml/b;

    invoke-direct {v2, p0}, Lorg/seamless/xml/b;-><init>(Lorg/seamless/xml/DOMParser;)V

    invoke-direct {v1, v2}, Lorg/seamless/xml/CatalogResourceResolver;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    .line 104
    iget-object v1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/seamless/xml/DOMParser;->schemaSources:[Ljavax/xml/transform/Source;

    invoke-virtual {v0, v1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;

    return-object v0

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/validation/SchemaFactory;->newSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    iput-object v0, p0, Lorg/seamless/xml/DOMParser;->schema:Ljavax/xml/validation/Schema;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getXPathResult(Lorg/seamless/xml/DOM;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/seamless/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/seamless/xml/DOMElement;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/seamless/xml/DOMParser;->getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getXPathResult(Lorg/w3c/dom/Node;Ljavax/xml/xpath/XPath;Ljava/lang/String;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 330
    :try_start_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Evaluating xpath query: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 331
    invoke-interface {p2, p3, p1, p4}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isIgnorableWSNode(Lorg/w3c/dom/Node;)Z
    .locals 2

    .prologue
    .line 447
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\t\\n\\x0B\\f\\r\\s]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/File;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/File;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/File;Z)Lorg/seamless/xml/DOM;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 238
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t parse null file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lorg/seamless/xml/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing file failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/InputStream;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/lang/String;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Z)Lorg/seamless/xml/DOM;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 233
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t parse null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/net/URL;)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/seamless/xml/DOMParser;->parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/net/URL;Z)Lorg/seamless/xml/DOM;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 224
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t parse null URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/seamless/xml/DOMParser;->parse(Ljava/io/InputStream;Z)Lorg/seamless/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    new-instance v1, Lorg/seamless/xml/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parsing URL failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Lorg/xml/sax/InputSource;Z)Lorg/seamless/xml/DOM;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/InputSource;",
            "Z)TD;"
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/seamless/xml/DOMParser;->createFactory(Z)Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 257
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 259
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 263
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->createDOM(Lorg/w3c/dom/Document;)Lorg/seamless/xml/DOM;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;

    move-result-object v0

    throw v0
.end method

.method public print(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    :try_start_0
    const-string v0, "xml"

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 367
    const-string v1, "encoding"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 370
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 371
    invoke-virtual {v1}, Ljava/io/StringWriter;->flush()V

    .line 373
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public print(Lorg/seamless/xml/DOM;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 340
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/seamless/xml/DOM;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/seamless/xml/DOM;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lorg/seamless/xml/DOMParser;->print(Lorg/seamless/xml/DOM;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/w3c/dom/Document;IZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    .line 357
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/seamless/xml/DOMParser;->print(Ljavax/xml/transform/Source;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHTML(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 381
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, v1, v1}, Lorg/seamless/xml/DOMParser;->printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public printHTML(Lorg/w3c/dom/Document;IZZ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Document;

    .line 393
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v2, Lorg/seamless/xml/c;

    invoke-direct {v2, p0}, Lorg/seamless/xml/c;-><init>(Lorg/seamless/xml/DOMParser;)V

    invoke-static {v1, v2}, Lorg/seamless/xml/DOMParser;->accept(Lorg/w3c/dom/Node;Lorg/seamless/xml/DOMParser$NodeVisitor;)V

    .line 401
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    .line 404
    :try_start_0
    const-string v1, "html"

    invoke-virtual {p0, v1, p2, p3}, Lorg/seamless/xml/DOMParser;->createTransformer(Ljava/lang/String;IZ)Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 406
    if-eqz p4, :cond_0

    .line 407
    const-string v2, "doctype-public"

    const-string v3, "-//W3C//DTD HTML 4.01 Transitional//EN"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v2, "doctype-system"

    const-string v3, "http://www.w3.org/TR/html4/loose.dtd"

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 412
    new-instance v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v3, v0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 413
    invoke-virtual {v2}, Ljava/io/StringWriter;->flush()V

    .line 414
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string v1, "\\s*<META http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">"

    .line 418
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "<html xmlns=\"http://www.w3.org/1999/xhtml\">"

    .line 422
    const-string v2, "<html>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 424
    return-object v0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v1, Lorg/seamless/xml/ParserException;

    invoke-direct {v1, v0}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V
    .locals 4

    .prologue
    .line 432
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 434
    :goto_0
    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 437
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->isIgnorableWSNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0

    .line 439
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 440
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->removeIgnorableWSNodes(Lorg/w3c/dom/Element;)V

    move-object v0, v1

    goto :goto_0

    .line 443
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4

    .prologue
    .line 479
    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 484
    :goto_0
    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 486
    return-object v0

    .line 482
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method protected unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/seamless/xml/ParserException;

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/seamless/xml/ParserException;

    .line 470
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/seamless/xml/ParserException;

    invoke-direct {v0, p1}, Lorg/seamless/xml/ParserException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public validate(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 279
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t validate null string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validating XML string characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljavax/xml/transform/sax/SAXSource;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 282
    return-void
.end method

.method public validate(Ljava/net/URL;)V
    .locals 3

    .prologue
    .line 273
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t validate null URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validating XML of URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 276
    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;)V
    .locals 1

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p0}, Lorg/seamless/xml/DOMParser;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/validation/Schema;->newValidator()Ljavax/xml/validation/Validator;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p0}, Ljavax/xml/validation/Validator;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 296
    invoke-virtual {v0, p1}, Ljavax/xml/validation/Validator;->validate(Ljavax/xml/transform/Source;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->unwrapException(Ljava/lang/Exception;)Lorg/seamless/xml/ParserException;

    move-result-object v0

    throw v0
.end method

.method public validate(Lorg/seamless/xml/DOM;)V
    .locals 2

    .prologue
    .line 289
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Lorg/seamless/xml/DOM;->getW3CDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 290
    return-void
.end method

.method public validate(Lorg/w3c/dom/Document;)V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMParser;->validate(Ljavax/xml/transform/Source;)V

    .line 286
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 454
    sget-object v0, Lorg/seamless/xml/DOMParser;->log:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 455
    return-void
.end method
