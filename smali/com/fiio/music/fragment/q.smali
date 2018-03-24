.class final Lcom/fiio/music/fragment/q;
.super Ljava/lang/Object;
.source "SettingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/fiio/music/fragment/SettingMenuFragment;

.field private final synthetic b:Lcom/fiio/music/activity/ListMainActivity;

.field private final synthetic c:Lcom/fiio/music/adapter/TestExpandableListAdapter;

.field private final synthetic d:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/fiio/music/fragment/SettingMenuFragment;Lcom/fiio/music/activity/ListMainActivity;Lcom/fiio/music/adapter/TestExpandableListAdapter;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iput-object p2, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iput-object p3, p0, Lcom/fiio/music/fragment/q;->c:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    iput-object p4, p0, Lcom/fiio/music/fragment/q;->d:Landroid/app/AlertDialog;

    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 1182
    const-string v0, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1183
    const-string v0, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1184
    const-string v0, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1185
    const-string v0, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1186
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$13(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    const-string v0, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$14(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    const-string v0, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$15(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1193
    const-string v0, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$16(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1196
    const-string v0, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1198
    :cond_3
    const-string v0, "PLAY_LIST"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1199
    const-string v0, "LOCAL_MUSIC"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1200
    const-string v0, "DLNA"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1201
    const-string v0, "RECENTLY_PLAY"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1202
    const-string v0, "MOST_PLAY"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1203
    const-string v0, "RECENTLY_ADD"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1204
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$17(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1205
    const-string v0, "PLAY_LIST"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1206
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$13(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1209
    const-string v5, "item_image"

    iget-object v6, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v6, v6, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v5, "item_bg"

    iget-object v6, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v6, v6, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v5, "item_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 1215
    :goto_0
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$18(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1216
    const-string v5, "LOCAL_MUSIC"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1217
    add-int/lit8 v0, v0, 0x1

    .line 1218
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1219
    const-string v6, "item_image"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v6, "item_bg"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string v6, "item_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_4
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$19(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1225
    const-string v5, "DLNA"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1226
    add-int/lit8 v0, v0, 0x1

    .line 1227
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1228
    const-string v6, "item_image"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    const-string v6, "item_bg"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string v6, "item_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_5
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$20(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1234
    const-string v5, "RECENTLY_PLAY"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1235
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$14(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1236
    add-int/lit8 v0, v0, 0x1

    .line 1237
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1238
    const-string v6, "item_image"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    const-string v6, "item_bg"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v6, "item_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_6
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$21(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1246
    const-string v5, "RECENTLY_ADD"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1247
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$16(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1248
    add-int/lit8 v0, v0, 0x1

    .line 1249
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1250
    const-string v6, "item_image"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string v6, "item_bg"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v6, "item_id"

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    :cond_7
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$22(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1257
    const-string v5, "MOST_PLAY"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1258
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$15(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/widget/RadioButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1259
    add-int/lit8 v0, v0, 0x1

    .line 1260
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1261
    const-string v6, "item_image"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_g:[I

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v6, "item_bg"

    iget-object v7, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v7, v7, Lcom/fiio/music/activity/ListMainActivity;->drawable_item_bg:[I

    aget v7, v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    const-string v6, "item_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1268
    if-eq v0, v9, :cond_9

    .line 1269
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    const v3, 0x7f0c00d7

    invoke-virtual {v1, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1290
    :goto_1
    return-void

    .line 1271
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v4, 0x7f0b01a1

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fiio/music/widget/DragGridView;

    .line 1272
    new-instance v4, Lcom/fiio/music/adapter/DragAdapter;

    iget-object v5, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-virtual {v5}, Lcom/fiio/music/fragment/SettingMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/fiio/music/adapter/DragAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1273
    invoke-virtual {v0, v4}, Lcom/fiio/music/widget/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1274
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PLAY_LIST"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$23(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1275
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "RECENTLY_PLAY"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$24(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1276
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "MOST_PLAY"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$25(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1277
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "RECENTLY_ADD"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$26(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1278
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PLAY_LIST_RADIO_BUTTON"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$27(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1279
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "RECENTLY_PLAY_RADIO_BUTTON"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$28(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1280
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "MOST_PLAY_RADIO_BUTTON"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$29(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1281
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$12(Lcom/fiio/music/fragment/SettingMenuFragment;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "RECENTLY_ADD_RADIO_BUTTON"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$30(Lcom/fiio/music/fragment/SettingMenuFragment;Ljava/lang/Boolean;)V

    .line 1282
    iget-object v5, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$31(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v0}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$32(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 1283
    :goto_2
    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$33(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v3}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$34(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v4}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$35(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v4}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$36(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v1

    .line 1284
    :goto_4
    iget-object v6, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v6}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$37(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/fiio/music/fragment/q;->a:Lcom/fiio/music/fragment/SettingMenuFragment;

    invoke-static {v6}, Lcom/fiio/music/fragment/SettingMenuFragment;->access$38(Lcom/fiio/music/fragment/SettingMenuFragment;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    .line 1282
    :goto_5
    invoke-virtual {v5, v0, v3, v4, v1}, Lcom/fiio/music/activity/ListMainActivity;->setGroupList(ZZZZ)V

    .line 1286
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->c:Lcom/fiio/music/adapter/TestExpandableListAdapter;

    invoke-virtual {v0}, Lcom/fiio/music/adapter/TestExpandableListAdapter;->notifyDataSetChanged()V

    .line 1287
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->b:Lcom/fiio/music/activity/ListMainActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/ListMainActivity;->initChildData()V

    .line 1288
    iget-object v0, p0, Lcom/fiio/music/fragment/q;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 1282
    goto :goto_2

    :cond_b
    move v3, v2

    .line 1283
    goto :goto_3

    :cond_c
    move v4, v2

    goto :goto_4

    :cond_d
    move v1, v2

    .line 1284
    goto :goto_5

    :cond_e
    move v0, v2

    goto/16 :goto_0
.end method
