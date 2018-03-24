.class final Lcom/fiio/music/activity/dd;
.super Ljava/lang/Object;
.source "LocalMusicActivity.java"

# interfaces
.implements Lcom/fiio/music/satellitemenu/h;


# instance fields
.field final synthetic a:Lcom/fiio/music/activity/LocalMusicActivity;


# direct methods
.method constructor <init>(Lcom/fiio/music/activity/LocalMusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x3

    const/4 v5, 0x1

    .line 1059
    const-string v2, "xyz"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clicked on item "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1061
    if-ne p1, v5, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1063
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1064
    :cond_1
    if-ne p1, v1, :cond_3

    .line 1065
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabAfm"

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1066
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1067
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1069
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1075
    :goto_1
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabAFm;->orderByA_Z(I)V

    goto :goto_0

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1072
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_1

    .line 1076
    :cond_3
    if-ne p1, v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabAfm"

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1078
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1079
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1081
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1086
    :goto_2
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$19(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabAFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabAFm;->orderByA_Z(I)V

    goto :goto_0

    .line 1083
    :cond_4
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabAFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1084
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_2

    .line 1088
    :cond_5
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 1089
    if-ne p1, v5, :cond_6

    .line 1090
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1091
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1092
    :cond_6
    if-ne p1, v1, :cond_8

    .line 1093
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "tabBFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1094
    if-eq v2, v0, :cond_7

    .line 1095
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabBFm"

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1101
    :goto_3
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabBFm;->orderBy(I)V

    goto/16 :goto_0

    .line 1098
    :cond_7
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v2, "tabBFm"

    invoke-virtual {v0, v2, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 1099
    goto :goto_3

    .line 1102
    :cond_8
    if-ne p1, v0, :cond_a

    .line 1103
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1105
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabBFm"

    invoke-virtual {v1, v2, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1106
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_9

    .line 1108
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1109
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1114
    :goto_4
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/fiio/music/fragment/TabBFm;->orderByAscOrDESC(II)V

    goto/16 :goto_0

    .line 1111
    :cond_9
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1112
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_4

    .line 1115
    :cond_a
    if-ne p1, v7, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1118
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabBFm"

    invoke-virtual {v1, v2, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1119
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_b

    .line 1121
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1122
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1127
    :goto_5
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/fiio/music/fragment/TabBFm;->orderByAscOrDESC(II)V

    goto/16 :goto_0

    .line 1124
    :cond_b
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1125
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_5

    .line 1130
    :cond_c
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_13

    .line 1131
    if-ne p1, v5, :cond_d

    .line 1132
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1133
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1134
    :cond_d
    if-ne p1, v1, :cond_f

    .line 1135
    const-string v0, "xyz"

    const-string v1, "\u67d0\u827a\u672f\u5bb6\u7684\u6b4c\u66f2\u6392\u5e8f\u6309\u94ae"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabBfmFir"

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1137
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1138
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_e

    .line 1139
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1140
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1145
    :goto_6
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/fragment/TabBFm;->orderSong(II)V

    goto/16 :goto_0

    .line 1142
    :cond_e
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1143
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_6

    .line 1146
    :cond_f
    if-ne p1, v0, :cond_11

    .line 1147
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabBfmFir"

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1148
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1149
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_10

    .line 1150
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1151
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1156
    :goto_7
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/fragment/TabBFm;->orderSong(II)V

    goto/16 :goto_0

    .line 1153
    :cond_10
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1154
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_7

    .line 1157
    :cond_11
    if-ne p1, v7, :cond_0

    .line 1158
    const-string v0, "zxy---"

    const-string v1, "sort  cd cd cd"

    invoke-static {v0, v1}, Lcom/fiio/music/util/aw;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1160
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_12

    .line 1161
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1162
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1167
    :goto_8
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$15(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabBFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabBFm;->sortForSongByCD(I)V

    goto/16 :goto_0

    .line 1164
    :cond_12
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortBFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1165
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_8

    .line 1169
    :cond_13
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 1170
    if-ne p1, v5, :cond_14

    .line 1171
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1172
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1173
    :cond_14
    if-ne p1, v1, :cond_16

    .line 1174
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "tabCFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1175
    if-eq v2, v0, :cond_15

    .line 1176
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCFm"

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1182
    :goto_9
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabCFr;->orderBy(I)V

    goto/16 :goto_0

    .line 1179
    :cond_15
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v2, "tabCFm"

    invoke-virtual {v0, v2, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 1180
    goto :goto_9

    .line 1183
    :cond_16
    if-ne p1, v0, :cond_18

    .line 1184
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1186
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCFm"

    invoke-virtual {v1, v2, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1187
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_17

    .line 1189
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1190
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1195
    :goto_a
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCNandF"

    sget v3, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1196
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v1, v6, v0, v2}, Lcom/fiio/music/fragment/TabCFr;->orderByASCOrDESC(III)V

    goto/16 :goto_0

    .line 1192
    :cond_17
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1193
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_a

    .line 1197
    :cond_18
    if-ne p1, v7, :cond_1a

    .line 1198
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1199
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1200
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCFm"

    invoke-virtual {v1, v2, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1201
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_19

    .line 1203
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1204
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1209
    :goto_b
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabCNandF"

    sget v3, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1210
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v1, v5, v0, v2}, Lcom/fiio/music/fragment/TabCFr;->orderByASCOrDESC(III)V

    goto/16 :goto_0

    .line 1206
    :cond_19
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortCFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1207
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_b

    .line 1211
    :cond_1a
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$17(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabCFr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fiio/music/fragment/TabCFr;->switchGridAndList()V

    goto/16 :goto_0

    .line 1217
    :cond_1b
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1c

    .line 1218
    if-ne p1, v5, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1220
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1233
    :cond_1c
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v0, :cond_23

    .line 1234
    if-ne p1, v5, :cond_1d

    .line 1235
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1236
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1237
    :cond_1d
    if-ne p1, v1, :cond_1f

    .line 1238
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v2

    const-string v3, "tabDFm"

    invoke-virtual {v2, v3}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v2

    .line 1239
    if-eq v2, v0, :cond_1e

    .line 1240
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabDFm"

    invoke-virtual {v1, v2, v0}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1246
    :goto_c
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabDFm;->orderBy(I)V

    goto/16 :goto_0

    .line 1243
    :cond_1e
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v2, "tabDFm"

    invoke-virtual {v0, v2, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    move v0, v1

    .line 1244
    goto :goto_c

    .line 1247
    :cond_1f
    if-ne p1, v0, :cond_21

    .line 1248
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1250
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabDFm"

    invoke-virtual {v1, v2, v6}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1251
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_20

    .line 1253
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1254
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1259
    :goto_d
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v1, v6, v0, v2}, Lcom/fiio/music/fragment/TabDFm;->orderByASCDESC(III)V

    goto/16 :goto_0

    .line 1256
    :cond_20
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1257
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_d

    .line 1260
    :cond_21
    if-ne p1, v7, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1263
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v1

    const-string v2, "tabDFm"

    invoke-virtual {v1, v2, v5}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1264
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_22

    .line 1266
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1267
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1272
    :goto_e
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$14(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabDFm;

    move-result-object v1

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v1, v5, v0, v2}, Lcom/fiio/music/fragment/TabDFm;->orderByASCDESC(III)V

    goto/16 :goto_0

    .line 1269
    :cond_22
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "sortDFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1270
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_e

    .line 1274
    :cond_23
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_25

    .line 1275
    if-ne p1, v5, :cond_24

    .line 1276
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1277
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1278
    :cond_24
    if-ne p1, v1, :cond_0

    .line 1279
    const-string v0, "xyz"

    const-string v1, "\u67d0\u98ce\u683c\u7684\u6b4c\u66f2\u6392\u5e8f\u6309\u94ae"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1281
    :cond_25
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    if-ne v2, v7, :cond_26

    if-ne p1, v5, :cond_26

    .line 1282
    const-string v0, "xyz"

    const-string v1, "file\u7f16\u8f91\u6309\u94ae"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1283
    :cond_26
    iget-object v2, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v2}, Lcom/fiio/music/activity/LocalMusicActivity;->access$5(Lcom/fiio/music/activity/LocalMusicActivity;)I

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    .line 1284
    if-ne p1, v5, :cond_27

    .line 1285
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->setFootViewInterface()V

    .line 1286
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-virtual {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->showBulkManage()V

    goto/16 :goto_0

    .line 1287
    :cond_27
    if-ne p1, v1, :cond_29

    .line 1288
    const-string v0, "xyz"

    const-string v1, "\u67d0File\u7684\u6b4c\u66f2\u6392\u5e8f\u6309\u94ae"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabEFM"

    sget v2, Lcom/fiio/music/util/cn;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;I)V

    .line 1290
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1291
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_28

    .line 1292
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1293
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1298
    :goto_f
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabEFm;->orderBy(I)V

    goto/16 :goto_0

    .line 1295
    :cond_28
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1296
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_f

    .line 1299
    :cond_29
    if-ne p1, v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "AZtabEFM"

    sget v2, Lcom/fiio/music/util/cn;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->b(Ljava/lang/String;I)V

    .line 1301
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    invoke-virtual {v0, v1}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;)I

    move-result v0

    .line 1302
    sget v1, Lcom/fiio/music/util/cn;->a:I

    if-eq v0, v1, :cond_2a

    .line 1303
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    sget v2, Lcom/fiio/music/util/cn;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1304
    sget v0, Lcom/fiio/music/util/cn;->a:I

    .line 1309
    :goto_10
    iget-object v1, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v1}, Lcom/fiio/music/activity/LocalMusicActivity;->access$16(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/fragment/TabEFm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fiio/music/fragment/TabEFm;->orderByAZ(I)V

    goto/16 :goto_0

    .line 1306
    :cond_2a
    iget-object v0, p0, Lcom/fiio/music/activity/dd;->a:Lcom/fiio/music/activity/LocalMusicActivity;

    invoke-static {v0}, Lcom/fiio/music/activity/LocalMusicActivity;->access$44(Lcom/fiio/music/activity/LocalMusicActivity;)Lcom/fiio/music/util/cr;

    move-result-object v0

    const-string v1, "tabEFm"

    sget v2, Lcom/fiio/music/util/cn;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/fiio/music/util/cr;->a(Ljava/lang/String;I)V

    .line 1307
    sget v0, Lcom/fiio/music/util/cn;->b:I

    goto :goto_10
.end method
