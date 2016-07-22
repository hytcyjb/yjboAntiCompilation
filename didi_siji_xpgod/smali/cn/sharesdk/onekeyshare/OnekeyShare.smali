.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "OnekeyShare.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcn/sharesdk/framework/PlatformActionListener;

.field private context:Landroid/content/Context;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field private dialogMode:Z

.field private disableSSO:Z

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notifyIcon:I

.field private notifyTitle:Ljava/lang/String;

.field private onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field private shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z

.field private theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    .line 67
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    .line 69
    return-void
.end method

.method private showNotification(JLjava/lang/String;)V
    .locals 12
    .parameter "cancelTime"
    .parameter "text"

    .prologue
    .line 598
    :try_start_0
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    .local v0, app:Landroid/content/Context;
    const-string v9, "notification"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 601
    .local v4, nm:Landroid/app/NotificationManager;
    const v2, 0x9d89d8a

    .line 602
    .local v2, id:I
    const v9, 0x9d89d8a

    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 605
    .local v7, when:J
    new-instance v5, Landroid/app/Notification;

    iget v9, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->notifyIcon:I

    invoke-direct {v5, v9, p3, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 606
    .local v5, notification:Landroid/app/Notification;
    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/4 v11, 0x0

    invoke-static {v0, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 607
    .local v6, pi:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->notifyTitle:Ljava/lang/String;

    invoke-virtual {v5, v0, v9, p3, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 608
    const/16 v9, 0x10

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 609
    const v9, 0x9d89d8a

    invoke-virtual {v4, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 611
    const-wide/16 v9, 0x0

    cmp-long v9, p1, v9

    if-lez v9, :cond_0

    .line 612
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 613
    .local v3, msg:Landroid/os/Message;
    const/4 v9, 0x3

    iput v9, v3, Landroid/os/Message;->what:I

    .line 614
    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    const v9, 0x9d89d8a

    iput v9, v3, Landroid/os/Message;->arg1:I

    .line 616
    invoke-static {v3, p1, p2, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessageDelayed(Landroid/os/Message;JLandroid/os/Handler$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v0           #app:Landroid/content/Context;
    .end local v2           #id:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #nm:Landroid/app/NotificationManager;
    .end local v5           #notification:Landroid/app/Notification;
    .end local v6           #pi:Landroid/app/PendingIntent;
    .end local v7           #when:J
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v1

    .line 619
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .locals 1
    .parameter "platform"

    .prologue
    .line 299
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    .line 289
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x7d0

    .line 508
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    return v8

    .line 510
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 515
    .end local v3           #text:Ljava/lang/String;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_completed"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 519
    .local v2, resId:I
    if-lez v2, :cond_0

    .line 520
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto :goto_0

    .line 526
    .end local v2           #resId:I
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, expName:Ljava/lang/String;
    const-string v4, "WechatClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WechatTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "WechatFavoriteNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "wechat_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 531
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 532
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v2           #resId:I
    :cond_2
    const-string v4, "GooglePlusClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 535
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "google_plus_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 536
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 537
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto :goto_0

    .line 539
    .end local v2           #resId:I
    :cond_3
    const-string v4, "QQClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 540
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "qq_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 541
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 542
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 544
    .end local v2           #resId:I
    :cond_4
    const-string v4, "YixinClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "YixinTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 546
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "yixin_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 547
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 548
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 550
    .end local v2           #resId:I
    :cond_6
    const-string v4, "KakaoTalkClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 551
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaotalk_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 552
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 553
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v2           #resId:I
    :cond_7
    const-string v4, "KakaoStoryClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 556
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaostory_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 557
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 558
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v2           #resId:I
    :cond_8
    const-string v4, "WhatsAppClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 561
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "whatsapp_client_inavailable"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 562
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 563
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 566
    .end local v2           #resId:I
    :cond_9
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_failed"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 567
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 568
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 575
    .end local v0           #expName:Ljava/lang/String;
    .end local v2           #resId:I
    :pswitch_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_canceled"

    invoke-static {v4, v5}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 576
    .restart local v2       #resId:I
    if-lez v2, :cond_0

    .line 577
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v7, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 585
    .end local v2           #resId:I
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    .line 586
    .local v1, nm:Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 587
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .parameter "platform"
    .parameter "action"

    .prologue
    .line 499
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 500
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 501
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 502
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 503
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    invoke-static {v0, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 505
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .parameter "platform"
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 477
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 478
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 479
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 480
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    invoke-static {v0, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 482
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .parameter "platform"
    .parameter "action"
    .parameter "t"

    .prologue
    const/4 v1, 0x2

    .line 485
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 487
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 488
    .local v0, msg:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 490
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 491
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    invoke-static {v0, p0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 495
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 496
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 148
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 258
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 259
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .parameter "comment"

    .prologue
    .line 198
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "enableLogo"
    .parameter "disableLogo"
    .parameter "label"
    .parameter "ocListener"

    .prologue
    .line 278
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 279
    .local v0, cl:Lcn/sharesdk/onekeyshare/CustomerLogo;
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 280
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 281
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 282
    iput-object p4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 283
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public setDialogMode()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 294
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .parameter "bgView"

    .prologue
    .line 318
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    .line 319
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "executeurl"

    .prologue
    .line 248
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 193
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 2
    .parameter "imageArray"

    .prologue
    .line 314
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method public setImageData(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 643
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageData"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2
    .parameter "imagePath"

    .prologue
    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "imageUrl"

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "installurl"

    .prologue
    .line 243
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public setLatitude(F)V
    .locals 3
    .parameter "latitude"

    .prologue
    .line 223
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public setLongitude(F)V
    .locals 3
    .parameter "longitude"

    .prologue
    .line 228
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "musicUrl"

    .prologue
    .line 253
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public setNotification(ILjava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "title"

    .prologue
    .line 142
    iput p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->notifyIcon:I

    .line 143
    iput-object p2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->notifyTitle:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0
    .parameter "onShareButtonClickListener"

    .prologue
    .line 322
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 323
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 2
    .parameter "platform"

    .prologue
    .line 238
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 268
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 269
    return-void
.end method

.method public setShareFromQQAuthSupport(Z)V
    .locals 3
    .parameter "shareFromQQLogin"

    .prologue
    .line 626
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public setSilent(Z)V
    .locals 0
    .parameter "silent"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    .line 234
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 2
    .parameter "site"

    .prologue
    .line 203
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "siteUrl"

    .prologue
    .line 208
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 166
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .locals 0
    .parameter "theme"

    .prologue
    .line 137
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 156
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "titleUrl"

    .prologue
    .line 161
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 188
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "venueDescription"

    .prologue
    .line 218
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 2
    .parameter "venueName"

    .prologue
    .line 213
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .locals 4
    .parameter "viewToShare"

    .prologue
    .line 305
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcn/sharesdk/framework/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Ljava/util/HashMap;)V
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, shareData:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v22, 0x0

    .line 328
    .local v22, started:Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 329
    .local v5, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/sharesdk/framework/Platform;

    .line 330
    .local v17, plat:Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 331
    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v16

    .line 343
    .local v16, name:Ljava/lang/String;
    const-string v25, "KakaoTalk"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 344
    .local v10, isKakaoTalk:Z
    if-eqz v10, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_0

    .line 345
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 346
    .local v15, msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "kakaotalk_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 348
    .local v18, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 353
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_0
    const-string v25, "KakaoStory"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 354
    .local v9, isKakaoStory:Z
    if-eqz v9, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_1

    .line 355
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 356
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "kakaostory_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 358
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 363
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_1
    const-string v25, "Line"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 364
    .local v11, isLine:Z
    if-eqz v11, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_2

    .line 365
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 366
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "line_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 368
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 369
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 373
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_2
    const-string v25, "WhatsApp"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 374
    .local v13, isWhatsApp:Z
    if-eqz v13, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_3

    .line 375
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 376
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "whatsapp_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 378
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 379
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 383
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_3
    const-string v25, "Pinterest"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 384
    .local v12, isPinterest:Z
    if-eqz v12, :cond_4

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_4

    .line 385
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 386
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "pinterest_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 388
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 389
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 393
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_4
    const-string v25, "Instagram"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 394
    new-instance v23, Landroid/content/Intent;

    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v23, test:Landroid/content/Intent;
    const-string v25, "com.instagram.android"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v25, "image/*"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    .line 398
    .local v19, ri:Landroid/content/pm/ResolveInfo;
    if-nez v19, :cond_5

    .line 399
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 400
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "instagram_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 402
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 403
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 408
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    .end local v19           #ri:Landroid/content/pm/ResolveInfo;
    .end local v23           #test:Landroid/content/Intent;
    :cond_5
    const-string v25, "YixinMoments"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string v25, "Yixin"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    :cond_6
    const/4 v14, 0x1

    .line 409
    .local v14, isYixin:Z
    :goto_1
    if-eqz v14, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcn/sharesdk/framework/Platform;->isValid()Z

    move-result v25

    if-nez v25, :cond_8

    .line 410
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 411
    .restart local v15       #msg:Landroid/os/Message;
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Landroid/os/Message;->what:I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "yixin_client_inavailable"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 413
    .restart local v18       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 414
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcn/sharesdk/framework/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 408
    .end local v14           #isYixin:Z
    .end local v15           #msg:Landroid/os/Message;
    .end local v18           #resId:I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 418
    .restart local v14       #isYixin:Z
    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 419
    .local v4, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v21, 0x1

    .line 420
    .local v21, shareType:I
    const-string v25, "imagePath"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, imagePath:Ljava/lang/String;
    if-eqz v7, :cond_c

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 422
    const/16 v21, 0x2

    .line 423
    const-string v25, ".gif"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 424
    const/16 v21, 0x9

    .line 456
    :cond_9
    :goto_2
    const-string v25, "shareType"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    if-nez v22, :cond_a

    .line 459
    const/16 v22, 0x1

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "sharing"

    invoke-static/range {v25 .. v26}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    .line 462
    .restart local v18       #resId:I
    if-lez v18, :cond_a

    .line 463
    const-wide/16 v25, 0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(JLjava/lang/String;)V

    .line 467
    .end local v18           #resId:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 468
    new-instance v20, Lcn/sharesdk/onekeyshare/ShareCore;

    invoke-direct/range {v20 .. v20}, Lcn/sharesdk/onekeyshare/ShareCore;-><init>()V

    .line 469
    .local v20, shareCore:Lcn/sharesdk/onekeyshare/ShareCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/ShareCore;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 470
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcn/sharesdk/onekeyshare/ShareCore;->share(Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)Z

    goto/16 :goto_0

    .line 425
    .end local v20           #shareCore:Lcn/sharesdk/onekeyshare/ShareCore;
    :cond_b
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 426
    const/16 v21, 0x4

    .line 427
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 428
    const/16 v21, 0x5

    goto/16 :goto_2

    .line 432
    :cond_c
    const-string v25, "viewToShare"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Bitmap;

    .line 433
    .local v24, viewToShare:Landroid/graphics/Bitmap;
    if-eqz v24, :cond_d

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v25

    if-nez v25, :cond_d

    .line 434
    const/16 v21, 0x2

    .line 435
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 436
    const/16 v21, 0x4

    .line 437
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 438
    const/16 v21, 0x5

    goto/16 :goto_2

    .line 442
    :cond_d
    const-string v25, "imageUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 443
    .local v8, imageUrl:Ljava/lang/Object;
    if-eqz v8, :cond_9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 444
    const/16 v21, 0x2

    .line 445
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ".gif"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 446
    const/16 v21, 0x9

    goto/16 :goto_2

    .line 447
    :cond_e
    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "url"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 448
    const/16 v21, 0x4

    .line 449
    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "musicUrl"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 450
    const/16 v21, 0x5

    goto/16 :goto_2

    .line 472
    .end local v4           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #imagePath:Ljava/lang/String;
    .end local v8           #imageUrl:Ljava/lang/Object;
    .end local v9           #isKakaoStory:Z
    .end local v10           #isKakaoTalk:Z
    .end local v11           #isLine:Z
    .end local v12           #isPinterest:Z
    .end local v13           #isWhatsApp:Z
    .end local v14           #isYixin:Z
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #plat:Lcn/sharesdk/framework/Platform;
    .end local v21           #shareType:I
    .end local v24           #viewToShare:Landroid/graphics/Bitmap;
    :cond_f
    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 72
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 73
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    .line 76
    const/4 v5, 0x1

    invoke-static {v5, v7}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 85
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 89
    .local v2, platform:Lcn/sharesdk/framework/Platform;
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    if-nez v5, :cond_0

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v2, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v5, :cond_1

    .line 93
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 95
    .local v4, shareData:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 134
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #platform:Lcn/sharesdk/framework/Platform;
    .end local v4           #shareData:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    sget-object v5, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    if-ne v5, v6, :cond_2

    .line 104
    const-string v5, "cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v3, platformListFakeActivity:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :goto_1
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setDialogMode(Z)V

    .line 114
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 115
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setSilent(Z)V

    .line 116
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 117
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 118
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 119
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V

    .line 120
    new-instance v5, Lcn/sharesdk/onekeyshare/OnekeyShare$1;

    invoke-direct {v5, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V

    .line 127
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .restart local v1       #name:Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 130
    .restart local v2       #platform:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3, p1, v2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 106
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #platform:Lcn/sharesdk/framework/Platform;
    .end local v3           #platformListFakeActivity:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_2
    :try_start_1
    const-string v5, "cn.sharesdk.onekeyshare.theme.classic.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3       #platformListFakeActivity:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    goto :goto_1

    .line 108
    .end local v3           #platformListFakeActivity:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #platformListFakeActivity:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_3
    invoke-virtual {v3, p1, v7}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Lcn/sharesdk/onekeyshare/OneKeyShareModel;)V
    .locals 1
    .parameter "context"
    .parameter "model"

    .prologue
    .line 630
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 631
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 632
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 633
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->imgPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 634
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setUrl(Ljava/lang/String;)V

    .line 635
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p2, Lcn/sharesdk/onekeyshare/OneKeyShareModel;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageData(Landroid/graphics/Bitmap;)V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 639
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 640
    return-void
.end method
