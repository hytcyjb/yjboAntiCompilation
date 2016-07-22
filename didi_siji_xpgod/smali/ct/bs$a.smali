.class final Lct/bs$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lct/bt;

.field private b:I

.field private synthetic c:Lct/bs;


# direct methods
.method constructor <init>(Lct/bs;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 887
    iput-object p1, p0, Lct/bs$a;->c:Lct/bs;

    .line 888
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 889
    invoke-static {p1}, Lct/bs;->a(Lct/bs;)Lct/be;

    invoke-static {}, Lct/bi;->c()Lct/bt;

    move-result-object v0

    iput-object v0, p0, Lct/bs$a;->a:Lct/bt;

    .line 890
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lct/bs$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 894
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 898
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->b(Lct/bs;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v2

    .line 899
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->c(Lct/bs;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v3

    .line 901
    invoke-static {v2}, Lct/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    invoke-virtual {v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v7

    .line 905
    invoke-virtual {v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v8

    .line 907
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1048
    :sswitch_0
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->o(Lct/bs;)Lct/ce;

    .line 1050
    const/16 v0, 0xf9f

    invoke-virtual {p0, v0}, Lct/bs$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 909
    :sswitch_1
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->d(Lct/bs;)V

    .line 910
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->e(Lct/bs;)Lct/ck;

    move-result-object v1

    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->f(Lct/bs;)I

    move-result v3

    invoke-static {}, Lct/bs;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v4}, Lct/bs;->f(Lct/bs;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v3, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 912
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_0

    .line 913
    const/16 v0, 0x2edf

    invoke-virtual {p0, v0, v8, v9}, Lct/bs$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 918
    :sswitch_2
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->d(Lct/bs;)V

    .line 919
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->e(Lct/bs;)Lct/ck;

    move-result-object v1

    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->f(Lct/bs;)I

    move-result v3

    invoke-static {}, Lct/bs;->d()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v4}, Lct/bs;->f(Lct/bs;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v3, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto :goto_0

    .line 924
    :sswitch_3
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->g(Lct/bs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    const-string v0, "TxLocationManagerImpl"

    const-string v4, "network connected --> prepare json"

    invoke-static {v0, v4}, Lct/b$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :sswitch_4
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->h(Lct/bs;)I

    move-result v4

    .line 931
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->i(Lct/bs;)Lct/cc;

    move-result-object v5

    .line 932
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->j(Lct/bs;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v8}, Lct/bs;->a(Lct/bs;)Lct/be;

    move-result-object v8

    invoke-virtual {v5, v7, v0, v8}, Lct/cc;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    move-result-object v8

    .line 935
    invoke-static {v8}, Lct/b$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 936
    :goto_1
    if-eqz v0, :cond_2

    .line 937
    const-string v9, "TxLocationManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleMessage: bad json "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_2
    if-eqz v0, :cond_4

    .line 941
    iget v0, p0, Lct/bs$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/bs$a;->b:I

    .line 943
    iget v0, p0, Lct/bs$a;->b:I

    if-lt v0, v13, :cond_0

    .line 944
    const-string v0, "TxLocationManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: bad json "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    sget-object v1, Lct/ck;->a:Lct/ck;

    invoke-static {v0, v13, v1}, Lct/bs;->a(Lct/bs;ILct/ck;)V

    .line 946
    iput v6, p0, Lct/bs$a;->b:I

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 935
    goto :goto_1

    .line 951
    :cond_4
    iput v6, p0, Lct/bs$a;->b:I

    .line 954
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->k(Lct/bs;)Lct/br;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->k(Lct/bs;)Lct/br;

    move-result-object v0

    invoke-virtual {v0}, Lct/br;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 955
    :goto_2
    iget-object v9, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v9}, Lct/bs;->l(Lct/bs;)Lct/bh;

    move-result-object v9

    invoke-interface {v9, v8, v0}, Lct/bh;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 956
    const-string v8, "[]"

    if-eq v0, v8, :cond_0

    .line 961
    invoke-static {v3}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->isRequestRawData(Lcom/tencent/map/geolocation/TencentLocationRequest;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 962
    new-instance v1, Lct/ck$a;

    invoke-direct {v1}, Lct/ck$a;-><init>()V

    iput-object v12, v1, Lct/ck$a;->b:Lct/ck;

    iput v7, v1, Lct/ck$a;->c:I

    invoke-virtual {v1}, Lct/ck$a;->a()Lct/ck;

    move-result-object v1

    .line 965
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawData(Lcom/tencent/map/geolocation/TencentLocation;[B)Lcom/tencent/map/geolocation/TencentLocation;

    .line 966
    invoke-static {}, Lct/bs;->d()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v6, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 954
    goto :goto_2

    .line 972
    :cond_6
    iget-object v2, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v2}, Lct/bs;->a(Lct/bs;)Lct/be;

    move-result-object v2

    iget-object v2, v2, Lct/be;->a:Landroid/content/Context;

    invoke-static {v2}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 973
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    sget-object v2, Lct/ck;->a:Lct/ck;

    invoke-static {v0, v1, v2}, Lct/bs;->a(Lct/bs;ILct/ck;)V

    goto/16 :goto_0

    .line 977
    :cond_7
    iget-object v1, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v1}, Lct/bs;->m(Lct/bs;)Lct/bx;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v4}, Lct/bx;->a(Ljava/lang/String;Lct/cc;I)V

    .line 978
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->l(Lct/bs;)Lct/bh;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lct/bh;->a(J)V

    goto/16 :goto_0

    .line 983
    :sswitch_5
    new-instance v8, Lct/cc;

    new-instance v0, Lct/cb;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lct/cb;-><init>(Landroid/location/Location;JIII)V

    invoke-direct {v8, v12, v12, v0}, Lct/cc;-><init>(Lct/ce;Lct/ca;Lct/cb;)V

    .line 986
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->j(Lct/bs;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v1}, Lct/bs;->a(Lct/bs;)Lct/be;

    move-result-object v1

    invoke-virtual {v8, v7, v0, v1}, Lct/cc;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    move-result-object v0

    .line 988
    iget-object v1, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v1}, Lct/bs;->m(Lct/bs;)Lct/bx;

    move-result-object v1

    iget-object v2, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v2}, Lct/bs;->h(Lct/bs;)I

    move-result v2

    invoke-virtual {v1, v0, v8, v2}, Lct/bx;->a(Ljava/lang/String;Lct/cc;I)V

    goto/16 :goto_0

    .line 994
    :sswitch_6
    const/16 v0, 0x1386

    invoke-virtual {p0, v0}, Lct/bs$a;->removeMessages(I)V

    .line 996
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 997
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lct/cc;

    .line 1000
    iget-object v3, v0, Lct/cc;->a:Lct/cb;

    if-eqz v3, :cond_8

    :goto_3
    if-eqz v1, :cond_9

    const-string v1, "gps"

    .line 1003
    :goto_4
    :try_start_0
    new-instance v3, Lct/ck$a;

    invoke-direct {v3}, Lct/ck$a;-><init>()V

    iput-object v2, v3, Lct/ck$a;->a:Ljava/lang/String;

    iput v7, v3, Lct/ck$a;->c:I

    iput-object v1, v3, Lct/ck$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lct/ck$a;->a()Lct/ck;

    move-result-object v1

    .line 1008
    invoke-static {v1}, Lct/ck;->a(Lct/ck;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    iget-object v2, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v2}, Lct/bs;->n(Lct/bs;)Lct/ca;

    move-result-object v2

    invoke-static {v1, v2}, Lct/ck;->a(Lct/ck;Lct/ca;)Lct/ck;

    .line 1023
    iget-object v2, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v2}, Lct/bs;->j(Lct/bs;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v3}, Lct/bs;->a(Lct/bs;)Lct/be;

    move-result-object v3

    invoke-virtual {v0, v7, v2, v3}, Lct/cc;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/geolocation/internal/TencentExtraKeys;->setRawQuery(Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v1}, Lct/ck;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "wifi_ap_num"

    invoke-virtual {v1}, Lct/ck;->a()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1030
    iget-object v2, v0, Lct/cc;->a:Lct/cb;

    if-eqz v2, :cond_b

    .line 1031
    iget-object v0, v0, Lct/cc;->a:Lct/cb;

    iget v0, v0, Lct/cb;->c:I

    .line 1033
    :goto_5
    invoke-virtual {v1}, Lct/ck;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sat_num"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0}, Lct/bs;->a(Lct/bs;)Lct/be;

    move-result-object v0

    const-string v2, "map"

    invoke-virtual {v0, v2}, Lct/be;->a(Ljava/lang/String;)Lct/bj;

    move-result-object v0

    .line 1037
    invoke-virtual {v1}, Lct/ck;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lct/bj;->b(Landroid/os/Bundle;)Z

    .line 1039
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    invoke-static {v0, v6, v1}, Lct/bs;->a(Lct/bs;ILct/ck;)V

    goto/16 :goto_0

    :cond_8
    move v1, v6

    .line 1000
    goto :goto_3

    :cond_9
    const-string v1, "network"

    goto :goto_4

    .line 1010
    :catch_0
    move-exception v0

    const-string v0, "TxLocationManagerImpl"

    const-string v1, "handleMessage: location failed"

    invoke-static {v0, v1}, Lct/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lct/bs$a;->a:Lct/bt;

    invoke-interface {v0}, Lct/bt;->d()Landroid/location/Location;

    move-result-object v0

    sget-object v1, Lct/bn;->b:Landroid/location/Location;

    if-eq v0, v1, :cond_a

    const/16 v1, 0xf9e

    invoke-virtual {p0, v1, v0}, Lct/bs$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    const/16 v1, 0x194

    sget-object v2, Lct/ck;->a:Lct/ck;

    invoke-static {v0, v1, v2}, Lct/bs;->a(Lct/bs;ILct/ck;)V

    goto/16 :goto_0

    .line 1044
    :sswitch_7
    iget-object v0, p0, Lct/bs$a;->c:Lct/bs;

    sget-object v2, Lct/ck;->a:Lct/ck;

    invoke-static {v0, v1, v2}, Lct/bs;->a(Lct/bs;ILct/ck;)V

    goto/16 :goto_0

    :cond_b
    move v0, v6

    goto :goto_5

    .line 907
    nop

    :sswitch_data_0
    .sparse-switch
        0x22b -> :sswitch_0
        0xf9e -> :sswitch_5
        0xf9f -> :sswitch_4
        0x1386 -> :sswitch_7
        0x1387 -> :sswitch_6
        0x1f3f -> :sswitch_3
        0x2ede -> :sswitch_2
        0x2edf -> :sswitch_1
    .end sparse-switch
.end method
