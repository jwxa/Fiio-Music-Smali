.class final Lcom/fiio/music/activity/a;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/AboutActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/AboutActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/a;->a:Lcom/fiio/music/activity/AboutActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fiio/music/activity/a;->a:Lcom/fiio/music/activity/AboutActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/AboutActivity;->a(Lcom/fiio/music/activity/AboutActivity;)V

    .line 82
    return-void
.end method
