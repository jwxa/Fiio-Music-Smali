.class final Lcom/audlabs/vipereffect/main/a;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/audlabs/vipereffect/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/audlabs/vipereffect/main/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/audlabs/vipereffect/main/a;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/audlabs/vipereffect/main/a;->a:Lcom/audlabs/vipereffect/main/MainActivity;

    invoke-virtual {v0}, Lcom/audlabs/vipereffect/main/MainActivity;->finish()V

    .line 48
    return-void
.end method
