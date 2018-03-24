.class final Lcom/audlabs/vipereffect/screen/e;
.super Ljava/lang/Object;
.source "ConvolverFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/ConvolverFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/e;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/e;->a:Lcom/audlabs/vipereffect/screen/ConvolverFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/audlabs/vipereffect/screen/ConvolverFragment;->access$6(Lcom/audlabs/vipereffect/screen/ConvolverFragment;Ljava/lang/String;)V

    .line 131
    return-void
.end method
