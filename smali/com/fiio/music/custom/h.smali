.class final Lcom/fiio/music/custom/h;
.super Ljava/lang/Object;
.source "XfDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/custom/g;

.field private final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/custom/g;Landroid/content/DialogInterface$OnClickListener;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/custom/h;->a:Lcom/fiio/music/custom/g;

    iput-object p2, p0, Lcom/fiio/music/custom/h;->b:Landroid/content/DialogInterface$OnClickListener;

    iput-object p3, p0, Lcom/fiio/music/custom/h;->c:Landroid/app/Dialog;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fiio/music/custom/h;->b:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/fiio/music/custom/h;->c:Landroid/app/Dialog;

    .line 240
    const/4 v2, -0x1

    .line 239
    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 241
    return-void
.end method
