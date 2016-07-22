.class final Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;
.super Ljava/lang/Object;
.source "OfflineDataDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/gm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;


# direct methods
.method constructor <init>(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)V
    .locals 0
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 1094
    const/4 v2, 0x0

    .line 1095
    .local v2, city:Lcom/tencent/tencentmap/mapsdk/maps/a/gi;
    const/4 v1, 0x0

    .line 1096
    .local v1, boDownload:Z
    const/4 v4, 0x0

    .line 1097
    .local v4, tryCount:I
    const/4 v3, 0x0

    .line 1098
    .local v3, cityDownloadSccessCount:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1099
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z

    move-result v5

    if-ne v5, v8, :cond_1

    .line 1101
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6

    .line 1103
    :try_start_0
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->c(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1108
    :goto_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1111
    :cond_1
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1112
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6

    .line 1116
    :try_start_2
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1117
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-object v2, v0

    .line 1133
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1135
    if-eqz v2, :cond_0

    .line 1136
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "*********"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url *******"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->A:Ljava/lang/String;

    .line 1140
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1141
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->h(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$a;->a(Ljava/lang/String;)Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-result-object v2

    .line 1145
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->i(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;Landroid/content/Context;)Z

    move-result v1

    .line 1147
    if-nez v1, :cond_9

    .line 1148
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z

    move-result v5

    if-eq v5, v8, :cond_3

    iget-object v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->j(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1150
    :cond_3
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    if-nez v5, :cond_8

    .line 1212
    :cond_4
    :goto_3
    return-void

    .line 1108
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1119
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1120
    if-gtz v5, :cond_7

    .line 1121
    if-lez v3, :cond_6

    .line 1124
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->g(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Lcom/tencent/tencentmap/mapsdk/maps/a/gj;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/tencent/tencentmap/mapsdk/maps/a/gj;->finishedDownloadCitys(I)V

    .line 1127
    :cond_6
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1133
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1130
    :cond_7
    :try_start_5
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->d(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;

    move-object v2, v0

    .line 1131
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_2

    .line 1155
    :cond_8
    :try_start_6
    iget-object v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->j(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1156
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1157
    :try_start_7
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1158
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1159
    :try_start_8
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->k(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;

    .line 1160
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 1171
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1175
    if-nez v1, :cond_c

    .line 1176
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->b(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z

    move-result v5

    if-ne v5, v8, :cond_a

    .line 1177
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    .line 1158
    :catchall_2
    move-exception v5

    :try_start_9
    monitor-exit v6

    throw v5

    .line 1164
    :cond_9
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 1165
    :try_start_a
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1166
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1167
    const/4 v5, 0x1

    :try_start_b
    invoke-virtual {v2, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V

    .line 1168
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1166
    :catchall_3
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1182
    :cond_a
    iget-object v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->l(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1183
    add-int/lit8 v4, v4, 0x1

    .line 1188
    :goto_4
    if-le v4, v9, :cond_0

    .line 1189
    const/4 v4, 0x0

    .line 1190
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6

    .line 1191
    :try_start_c
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1192
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1193
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Lcom/tencent/tencentmap/mapsdk/maps/a/gi;)V

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "**\u91cd\u8bd5\u591a\u6b21\uff0c\u4e0b\u8f7d\u5931\u8d25**abort*****"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " url *******"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->A:Ljava/lang/String;

    .line 1198
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1185
    :cond_b
    const/4 v4, 0x0

    .line 1186
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    iget-object v6, v2, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->c:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->a(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 1192
    :catchall_4
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1203
    :cond_c
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->e(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)[B

    move-result-object v6

    monitor-enter v6

    .line 1204
    :try_start_d
    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/gm$1;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/gm;

    invoke-static {v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/gm;->f(Lcom/tencent/tencentmap/mapsdk/maps/a/gm;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1205
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1206
    invoke-virtual {v2, v8}, Lcom/tencent/tencentmap/mapsdk/maps/a/gi;->a(I)V

    .line 1207
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1205
    :catchall_5
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method
