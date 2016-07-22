.class public Lcom/didi/common/alarm/CommonAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CommonAlarmReceiver.java"


# static fields
.field public static final ACTION_REPEAT_CHECK_ANSWER:Ljava/lang/String; = "action_repeat_check_answer"

.field public static final BOOK_CHECK_STATUS_ACTION:Ljava/lang/String; = "book_check_status_action"

.field public static final BOOK_EVALUATE_ACTION:Ljava/lang/String; = "book_evaluate_action"

.field public static final BOOK_HALF_HOUR_ACTION:Ljava/lang/String; = "book_half_hour_action"

.field public static final BOOK_ONE_HOUR_ACTION:Ljava/lang/String; = "book_one_hour_action"

.field public static final CHECK_PAY_RESULT:Ljava/lang/String; = "check_pay_result"

.field public static final CHECK_STATUS_ACTION:Ljava/lang/String; = "check_status_action"

.field public static final EVALUATE_ACTION:Ljava/lang/String; = "evaluate_action"

.field public static final FIFTEEN_NOTICE_ACTION:Ljava/lang/String; = "fifteen_notice_action"

.field public static final FIVE_MINUTE_POLLING_ACTION:Ljava/lang/String; = "five_minute_polling_action"

.field public static final FROM_NOTIFY:Ljava/lang/String; = "from_notify"

.field public static final HOME_BACK_APP_LOG_ACTION:Ljava/lang/String; = "home_back_app_log_action"

.field public static final HOME_BACK_PROCESS_ACTION:Ljava/lang/String; = "home_back_process_action"

.field public static final MSG:Ljava/lang/String; = "msg"

.field public static final NOTIFYCATION_ID:I = 0x270f

.field public static final ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final SEND_POSITION_3S:Ljava/lang/String; = "send_position_3s"

.field public static final SEND_POSITION_40S:Ljava/lang/String; = "send_position_40s"

.field private static mHandlerBookChkAnswer:Landroid/os/Handler;

.field private static mHandlerChkAnswer:Landroid/os/Handler;

.field private static mHandlerChkPayResult:Landroid/os/Handler;

.field private static mHandlerPositionSend:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    .line 60
    sput-object v0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerBookChkAnswer:Landroid/os/Handler;

    .line 61
    sput-object v0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkPayResult:Landroid/os/Handler;

    .line 62
    sput-object v0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerPositionSend:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static setBookChkAnswerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 173
    sput-object p0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerBookChkAnswer:Landroid/os/Handler;

    .line 174
    return-void
.end method

.method public static setChkAnswerHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 168
    sput-object p0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method public static setChkPayResultHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 177
    sput-object p0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkPayResult:Landroid/os/Handler;

    .line 178
    return-void
.end method

.method public static setPositionSendHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 163
    sput-object p0, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerPositionSend:Landroid/os/Handler;

    .line 164
    return-void
.end method

.method private showNotifycation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 182
    const v2, 0x7f080540

    .line 183
    .local v2, notificationId:I
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Lcom/didi/common/base/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 185
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 186
    new-instance v1, Landroid/app/Notification;

    const v6, 0x7f0201c4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v6, p2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 187
    .local v1, notification:Landroid/app/Notification;
    const/16 v6, 0x10

    iput v6, v1, Landroid/app/Notification;->flags:I

    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    const-class v7, Lcom/didi/frame/MainActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "hint_type_history"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    invoke-static {v6, v9, v0, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 191
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/didi/common/base/BaseApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300d6

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 192
    .local v5, remoteViews:Landroid/widget/RemoteViews;
    const v6, 0x7f0804a8

    invoke-virtual {v5, v6, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    const v6, 0x7f0804a7

    invoke-virtual {v5, v6, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    iput-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 195
    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 196
    invoke-virtual {v3, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommonAlarmReceiver--onReceive--ACTION_REPEAT_CHECK_ANSWER  intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 68
    const-string v3, "check_status_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 70
    .local v2, msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 71
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 160
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v3, "action_repeat_check_answer"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 81
    .restart local v2       #msg:Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommonAlarmReceiver--onReceive--ACTION_REPEAT_CHECK_ANSWER  msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handler:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 83
    if-eqz v2, :cond_0

    .line 84
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 88
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    const-string v3, "evaluate_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 90
    .restart local v2       #msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 91
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkAnswer:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 103
    .end local v2           #msg:Landroid/os/Message;
    :cond_3
    const-string v3, "book_half_hour_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    invoke-static {p1}, Lcom/didi/common/util/Utils;->isMyAppRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/didi/frame/MainActivity;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v1, bookOrderHintIntent:Landroid/content/Intent;
    const-string v3, "hint_type_dialog"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 112
    .end local v1           #bookOrderHintIntent:Landroid/content/Intent;
    :cond_4
    const v3, 0x7f0b01f6

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b01f5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/didi/common/alarm/CommonAlarmReceiver;->showNotifycation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_5
    const-string v3, "book_check_status_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 115
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 116
    .restart local v2       #msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerBookChkAnswer:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerBookChkAnswer:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 119
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    const-string v3, "five_minute_polling_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    sget v3, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    .line 122
    sget v3, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    const/4 v4, 0x6

    if-le v3, v4, :cond_0

    .line 123
    invoke-static {}, Lcom/didi/common/alarm/CommonAlarmManager;->cancelRequest4Trace()V

    .line 124
    const/4 v3, 0x0

    sput v3, Lcom/didi/common/util/Constant;->REQUEST_CNT:I

    goto/16 :goto_0

    .line 132
    :cond_7
    const-string v3, "check_pay_result"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 133
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 134
    .restart local v2       #msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkPayResult:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerChkPayResult:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 137
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    const-string v3, "send_position_3s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "send_position_40s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 138
    :cond_9
    const-string v3, "msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 139
    .restart local v2       #msg:Landroid/os/Message;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerPositionSend:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 140
    sget-object v3, Lcom/didi/common/alarm/CommonAlarmReceiver;->mHandlerPositionSend:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 142
    .end local v2           #msg:Landroid/os/Message;
    :cond_a
    const-string v3, "home_back_process_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 144
    :try_start_0
    const-string v3, "AlarmBackKill"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v3

    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/didi/common/util/Utils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/didi/common/util/Utils;->isAppTopFront(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    const-string v3, "AlarmBackKillDo"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->exit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 150
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 153
    :cond_b
    const-string v3, "home_back_app_log_action"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->isTimeOut()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 155
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->stop()V

    goto/16 :goto_0

    .line 158
    :cond_c
    invoke-static {}, Lcom/didi/frame/log/helper/HomeBackAppHelper;->logAppInfo()V

    goto/16 :goto_0
.end method
