.class final Lcom/fiio/music/activity/y;
.super Ljava/lang/Object;
.source "EqActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/w;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/w;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/y;->a:Lcom/fiio/music/activity/w;

    iput-object p2, p0, Lcom/fiio/music/activity/y;->b:Landroid/app/AlertDialog;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fiio/music/activity/y;->a:Lcom/fiio/music/activity/w;

    iget-object v0, v0, Lcom/fiio/music/activity/w;->a:Lcom/fiio/music/activity/EqActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/EqActivity;->access$2(Lcom/fiio/music/activity/EqActivity;)V

    .line 193
    iget-object v0, p0, Lcom/fiio/music/activity/y;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 194
    return-void
.end method
