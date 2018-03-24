.class final Lcom/fiio/music/activity/gi;
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
    iput-object p1, p0, Lcom/fiio/music/activity/gi;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fiio/music/activity/gi;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/ScanSettingActivity;->access$1(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/fiio/music/activity/gi;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/ScanSettingActivity;->access$2(Lcom/fiio/music/activity/ScanSettingActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "FILTER_TIME_60S"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 136
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    iget-object v0, p0, Lcom/fiio/music/activity/gi;->a:Lcom/fiio/music/activity/ScanSettingActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ScanSettingActivity;->finish()V

    .line 138
    return-void

    .line 129
    :cond_0
    const-string v1, "FILTER_TIME_60S"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
