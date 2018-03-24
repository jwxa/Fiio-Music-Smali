.class final Lcom/fiio/music/activity/gj;
.super Ljava/lang/Object;
.source "ScanSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/ScanSettingActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/ScanSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/gj;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fiio/music/activity/gj;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanSettingActivity;->access$1(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    const-string v1, "FILTER_SWITCH"

    iget-object v2, p0, Lcom/fiio/music/activity/gj;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanSettingActivity;->access$3(Lcom/fiio/music/activity/ScanSettingActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v1, "FILTER_SIZE"

    iget-object v2, p0, Lcom/fiio/music/activity/gj;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/ScanSettingActivity;->access$4(Lcom/fiio/music/activity/ScanSettingActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    iget-object v0, p0, Lcom/fiio/music/activity/gj;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanSettingActivity;->finish()V

    .line 151
    return-void
.end method
