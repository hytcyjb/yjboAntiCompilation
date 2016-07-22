.class public Lcom/didi/common/receiver/GetuiPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GetuiPushReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private loop:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 41
    const-string v0, "GetuiPushReceiver"

    iput-object v0, p0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/didi/common/receiver/GetuiPushReceiver$1;

    invoke-direct {v0, p0}, Lcom/didi/common/receiver/GetuiPushReceiver$1;-><init>(Lcom/didi/common/receiver/GetuiPushReceiver;)V

    iput-object v0, p0, Lcom/didi/common/receiver/GetuiPushReceiver;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/common/receiver/GetuiPushReceiver;->loop:I

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/receiver/GetuiPushReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "intent"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/receiver/GetuiPushReceiver;->mContext:Landroid/content/Context;

    .line 61
    :try_start_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/frame/FragmentMgr;->isCallingWizard()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 62
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    const-string v15, "\u5728\u6253\u8f66\u72b6\u6001\uff0c\u62e6\u622a\u901a\u77e5\u4fe1\u606f"

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v14

    .line 68
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    .local v2, bundle:Landroid/os/Bundle;
    const-string v14, "action"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    const-string v14, "payload"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v11

    .line 82
    .local v11, payload:[B
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "BtsGetui="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    if-eqz v11, :cond_8

    .line 85
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>([B)V

    .line 87
    .local v4, data:Ljava/lang/String;
    invoke-static {v4}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    const-string v15, "data is null"

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v4           #data:Ljava/lang/String;
    .end local v11           #payload:[B
    :pswitch_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/didi/common/config/Preferences;->getClientIdString()Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, oldCid:Ljava/lang/String;
    const-string v14, "clientid"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, newCid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/didi/common/config/Preferences;->setClientIdString(Ljava/lang/String;)V

    .line 74
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 75
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x66

    const-wide/16 v16, 0x3a98

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "clientid:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "suuid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/didi/common/helper/SUUIDHelper;->getDiDiSUUID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[client_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/didi/common/util/TraceLog;->addLogByCustom(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .end local v9           #newCid:Ljava/lang/String;
    .end local v10           #oldCid:Ljava/lang/String;
    .restart local v4       #data:Ljava/lang/String;
    .restart local v11       #payload:[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "playload:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v7, jsonObject:Lorg/json/JSONObject;
    const-string v14, "lt"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-static {}, Lcom/didi/common/util/Utils;->isRunningForeground()Z

    move-result v14

    if-nez v14, :cond_5

    .line 95
    invoke-static {v4}, Lcom/didi/beatles/notification/Redirect;->payloadToRedirect(Ljava/lang/String;)Lcom/didi/beatles/notification/Redirect;

    move-result-object v12

    .line 96
    .local v12, redirect:Lcom/didi/beatles/notification/Redirect;
    if-eqz v12, :cond_0

    .line 97
    const/4 v14, 0x3

    iput v14, v12, Lcom/didi/beatles/notification/Redirect;->pushType:I

    .line 98
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/didi/beatles/notification/BtsNotificationUtils;->showPushNotice(Landroid/content/Context;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 120
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v12           #redirect:Lcom/didi/beatles/notification/Redirect;
    :catch_1
    move-exception v5

    .line 121
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    const-string v15, "\u9519\u8bef\u683c\u5f0f\u6570\u636e\uff0c\u4e0d\u505a\u5904\u7406"

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    :cond_5
    :try_start_2
    new-instance v3, Lcom/didi/common/notification/CommonRedirectModel;

    invoke-direct {v3, v7}, Lcom/didi/common/notification/CommonRedirectModel;-><init>(Lorg/json/JSONObject;)V

    .line 103
    .local v3, commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    iget v14, v3, Lcom/didi/common/notification/CommonRedirectModel;->version:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 106
    const/4 v6, 0x1

    .line 107
    .local v6, isShowDialog:Z
    iget v14, v3, Lcom/didi/common/notification/CommonRedirectModel;->linkType:I

    if-nez v14, :cond_7

    .line 108
    const/4 v6, 0x1

    .line 112
    :goto_1
    iget-object v13, v3, Lcom/didi/common/notification/CommonRedirectModel;->title:Ljava/lang/String;

    .line 113
    .local v13, title:Ljava/lang/String;
    iget-object v8, v3, Lcom/didi/common/notification/CommonRedirectModel;->content:Ljava/lang/String;

    .line 114
    .local v8, message:Ljava/lang/String;
    invoke-static {v13}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 115
    const v14, 0x7f0b01e2

    invoke-static {v14}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 117
    :cond_6
    const-string v14, "test"

    const-string v15, "testcrash 8"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-class v14, Lcom/didi/frame/MainActivity;

    invoke-static {v13, v8, v7, v14, v6}, Lcom/didi/common/notification/CommonNotification;->sendNotification(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 110
    .end local v8           #message:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    .line 126
    .end local v3           #commonRedirectModel:Lcom/didi/common/notification/CommonRedirectModel;
    .end local v4           #data:Ljava/lang/String;
    .end local v6           #isShowDialog:Z
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/didi/common/receiver/GetuiPushReceiver;->TAG:Ljava/lang/String;

    const-string v15, "payload:null"

    invoke-static {v14, v15}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
