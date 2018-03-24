.class public Lorg/seamless/xhtml/Root;
.super Lorg/seamless/xhtml/XHTMLElement;
.source "Root.java"


# direct methods
.method public constructor <init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/seamless/xhtml/XHTMLElement;-><init>(Ljavax/xml/xpath/XPath;Lorg/w3c/dom/Element;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getBody()Lorg/seamless/xhtml/Body;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/seamless/xhtml/d;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/d;-><init>(Lorg/seamless/xhtml/Root;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->body:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/d;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/Body;

    return-object v0
.end method

.method public getHead()Lorg/seamless/xhtml/Head;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lorg/seamless/xhtml/c;

    invoke-direct {v0, p0, p0}, Lorg/seamless/xhtml/c;-><init>(Lorg/seamless/xhtml/Root;Lorg/seamless/xml/DOMElement;)V

    sget-object v1, Lorg/seamless/xhtml/XHTML$ELEMENT;->head:Lorg/seamless/xhtml/XHTML$ELEMENT;

    invoke-virtual {v1}, Lorg/seamless/xhtml/XHTML$ELEMENT;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/seamless/xhtml/c;->firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    check-cast v0, Lorg/seamless/xhtml/Head;

    return-object v0
.end method
