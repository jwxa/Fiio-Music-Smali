.class final Lcom/audlabs/vipereffect/screen/l;
.super Ljava/lang/Object;
.source "DSPScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/DSPScreenActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/l;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/audlabs/vipereffect/screen/l;->a:Lcom/audlabs/vipereffect/screen/DSPScreenActivity;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/screen/DSPScreenActivity;->finish()V

    .line 27
    return-void
.end method
