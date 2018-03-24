.class public abstract Lorg/seamless/xml/DOMElement$Builder;
.super Ljava/lang/Object;
.source "DOMElement.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/seamless/xml/DOMElement;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public element:Lorg/seamless/xml/DOMElement;

.field final synthetic this$0:Lorg/seamless/xml/DOMElement;


# direct methods
.method protected constructor <init>(Lorg/seamless/xml/DOMElement;Lorg/seamless/xml/DOMElement;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lorg/seamless/xml/DOMElement$Builder;->this$0:Lorg/seamless/xml/DOMElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lorg/seamless/xml/DOMElement$Builder;->element:Lorg/seamless/xml/DOMElement;

    .line 276
    return-void
.end method


# virtual methods
.method public abstract build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")TT;"
        }
    .end annotation
.end method

.method public firstChildOrNull(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/seamless/xml/DOMElement$Builder;->element:Lorg/seamless/xml/DOMElement;

    invoke-virtual {v0, p1}, Lorg/seamless/xml/DOMElement;->getFirstChild(Ljava/lang/String;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    .line 282
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/seamless/xml/DOMElement;->getW3CElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/seamless/xml/DOMElement$Builder;->build(Lorg/w3c/dom/Element;)Lorg/seamless/xml/DOMElement;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
