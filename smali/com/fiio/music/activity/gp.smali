.class final Lcom/fiio/music/activity/gp;
.super Ljava/lang/Object;
.source "ScanningActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanningActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanningActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gp;->a:Lcom/fiio/music/activity/ScanningActivity;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/fiio/music/activity/gp;->a:Lcom/fiio/music/activity/ScanningActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanningActivity;->finish()V

    .line 293
    return-void
.end method
