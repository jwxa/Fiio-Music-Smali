.class final Lorg/seamless/xml/c;
.super Lorg/seamless/xml/DOMParser$NodeVisitor;
.source "DOMParser.java"


# instance fields
.field final synthetic a:Lorg/seamless/xml/DOMParser;


# direct methods
.method constructor <init>(Lorg/seamless/xml/DOMParser;)V
    .locals 1

    .prologue
    .line 393
    iput-object p1, p0, Lorg/seamless/xml/c;->a:Lorg/seamless/xml/DOMParser;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public final visit(Lorg/w3c/dom/Node;)V
    .locals 2

    .prologue
    .line 396
    check-cast p1, Lorg/w3c/dom/CDATASection;

    .line 397
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 398
    return-void
.end method
