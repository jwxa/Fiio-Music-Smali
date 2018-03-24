.class final Lorg/seamless/xhtml/g;
.super Lorg/seamless/xml/DOMParser$NodeVisitor;
.source "XHTMLParser.java"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lorg/seamless/xhtml/XHTMLParser;


# direct methods
.method constructor <init>(Lorg/seamless/xhtml/XHTMLParser;Ljava/util/Set;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lorg/seamless/xhtml/g;->b:Lorg/seamless/xhtml/XHTMLParser;

    iput-object p2, p0, Lorg/seamless/xhtml/g;->a:Ljava/util/Set;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/seamless/xml/DOMParser$NodeVisitor;-><init>(S)V

    return-void
.end method


# virtual methods
.method public final visit(Lorg/w3c/dom/Node;)V
    .locals 4

    .prologue
    .line 46
    check-cast p1, Lorg/w3c/dom/Element;

    .line 48
    sget-object v0, Lorg/seamless/xhtml/XHTML$ATTR;->id:Lorg/seamless/xhtml/XHTML$ATTR;

    invoke-virtual {v0}, Lorg/seamless/xhtml/XHTML$ATTR;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v1, p0, Lorg/seamless/xhtml/g;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate identifier, override/change value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    iget-object v1, p0, Lorg/seamless/xhtml/g;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    return-void
.end method
