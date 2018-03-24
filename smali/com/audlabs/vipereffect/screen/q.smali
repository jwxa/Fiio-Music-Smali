.class final Lcom/audlabs/vipereffect/screen/q;
.super Ljava/lang/Object;
.source "DynamicsystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/screen/o;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/screen/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/screen/q;->a:Lcom/audlabs/vipereffect/screen/o;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    return-void
.end method
