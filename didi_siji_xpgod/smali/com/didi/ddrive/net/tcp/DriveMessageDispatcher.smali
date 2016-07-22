.class public Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;
.super Ljava/lang/Object;
.source "DriveMessageDispatcher.java"

# interfaces
.implements Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver;
.implements Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/didi/ddrive/net/tcp/tcp/MessageReceiver",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/didi/ddrive/net/tcp/InMessage;",
        ">;>;",
        "Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager$ConnectionLifeCycleListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Connection-drive"


# instance fields
.field private mMessageSender:Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

.field private stringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->stringBuffer:Ljava/lang/StringBuilder;

    .line 59
    return-void
.end method

.method private dispatchMessage(Lcom/didi/ddrive/net/tcp/InMessage;)V
    .locals 29
    .parameter "message"

    .prologue
    .line 108
    const-string v25, "Connection-drive"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "dispatch message : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v25, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    invoke-static/range {v25 .. v25}, Lcom/didi/frame/business/OrderHelper;->getSendableByBusiness(Lcom/didi/frame/business/Business;)Lcom/didi/frame/Sendable;

    move-result-object v10

    check-cast v10, Lcom/didi/ddrive/model/DDriveOrder;

    .line 110
    .local v10, order:Lcom/didi/ddrive/model/DDriveOrder;
    iget-wide v12, v10, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 111
    .local v12, orderId:J
    move-object/from16 v0, p1

    iget v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->cmd:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_0

    .line 252
    :cond_0
    :goto_0
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 253
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v24

    .line 255
    .local v24, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    new-instance v4, Lcom/didi/ddrive/net/tcp/send/AckMessage;

    invoke-direct {v4}, Lcom/didi/ddrive/net/tcp/send/AckMessage;-><init>()V

    .line 256
    .local v4, ackMessage:Lcom/didi/ddrive/net/tcp/send/AckMessage;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->idx:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v4, Lcom/didi/ddrive/net/tcp/send/AckMessage;->idx:J

    .line 257
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v4, Lcom/didi/ddrive/net/tcp/send/AckMessage;->sid:J

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->mMessageSender:Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    move-object/from16 v25, v0

    invoke-static {v4}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Lcom/didi/ddrive/net/tcp/tcp/MessageSender;->sendMessage(Ljava/lang/String;)V

    .line 260
    .end local v4           #ackMessage:Lcom/didi/ddrive/net/tcp/send/AckMessage;
    .end local v24           #user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    :cond_1
    return-void

    .line 113
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;

    .line 114
    .local v23, timeoutmsg:Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;
    const-string v25, "Connection-drive"

    invoke-virtual/range {v23 .. v23}, Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v22, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;

    invoke-direct/range {v22 .. v22}, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;-><init>()V

    .line 117
    .local v22, timeoutEvent:Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 120
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;->oid:J

    .line 122
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->TIMEOUT:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v22           #timeoutEvent:Lcom/didi/ddrive/eventbus/event/OrderTimeoutEvent;
    .end local v23           #timeoutmsg:Lcom/didi/ddrive/net/tcp/message/OrderTimeoutMessage;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;

    .line 126
    .local v6, destarrimsg:Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;
    const-string v25, "Connection-drive"

    invoke-virtual {v6}, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-wide v0, v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 131
    new-instance v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;

    invoke-direct {v7}, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;-><init>()V

    .line 132
    .local v7, destinationArrivedEvent:Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;
    iget-wide v0, v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->did:J

    .line 133
    iget-wide v0, v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->oid:J

    .line 134
    iget-wide v0, v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->driverLat:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->lat:D

    .line 135
    iget-wide v0, v6, Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;->driverLng:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->lng:D

    .line 138
    iget-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->lat:D

    move-wide/from16 v25, v0

    iget-wide v0, v7, Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;->lng:D

    move-wide/from16 v27, v0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/didi/ddrive/model/DDriveOrder;->updateDriverLocation(DD)V

    .line 140
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    .end local v6           #destarrimsg:Lcom/didi/ddrive/net/tcp/message/DestinationArrivedMessage;
    .end local v7           #destinationArrivedEvent:Lcom/didi/ddrive/eventbus/event/DestinationArrivedEvent;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;

    .line 144
    .local v8, drivearrimsg:Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;
    const-string v25, "Connection-drive"

    invoke-virtual {v8}, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-wide v0, v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 149
    new-instance v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;

    invoke-direct {v9}, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;-><init>()V

    .line 150
    .local v9, driverArrivedEvent:Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;
    iget-wide v0, v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->did:J

    .line 151
    iget-wide v0, v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->oid:J

    .line 152
    iget-wide v0, v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->driverLat:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lat:D

    .line 153
    iget-wide v0, v8, Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;->driverLng:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lng:D

    .line 156
    iget-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lat:D

    move-wide/from16 v25, v0

    iget-wide v0, v9, Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;->lng:D

    move-wide/from16 v27, v0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/didi/ddrive/model/DDriveOrder;->updateDriverLocation(DD)V

    .line 158
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->ARRIVE:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v9}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    .end local v8           #drivearrimsg:Lcom/didi/ddrive/net/tcp/message/DriverArrivedMessage;
    .end local v9           #driverArrivedEvent:Lcom/didi/ddrive/eventbus/event/DriverArrivedEvent;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;

    .line 162
    .local v15, ordercancelmsg:Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;
    const-string v25, "Connection-drive"

    invoke-virtual {v15}, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-wide v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 167
    new-instance v5, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;

    invoke-direct {v5}, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;-><init>()V

    .line 168
    .local v5, cancelEvent:Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;
    iget-object v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->cancelReason:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iput-object v0, v5, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;->reason:Ljava/lang/String;

    .line 169
    iget-wide v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;->oid:J

    .line 170
    iget-wide v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v5, Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;->did:J

    .line 171
    if-eqz v10, :cond_2

    iget-wide v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    move-wide/from16 v25, v0

    iget-wide v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->oid:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-nez v25, :cond_2

    .line 172
    iget-wide v0, v15, Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 175
    :cond_2
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->CANCEL:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 178
    .end local v5           #cancelEvent:Lcom/didi/ddrive/eventbus/event/DriverCancelEvent;
    .end local v15           #ordercancelmsg:Lcom/didi/ddrive/net/tcp/message/OrderCancelMessage;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;

    .line 179
    .local v14, orderaccemsg:Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;
    const-string v25, "Connection-drive"

    invoke-virtual {v14}, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-wide v0, v14, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 184
    new-instance v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;

    invoke-direct {v11}, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;-><init>()V

    .line 185
    .local v11, orderAcceptEvent:Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;
    iget-wide v0, v14, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->did:J

    .line 186
    iget-wide v0, v14, Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->oid:J

    .line 187
    if-eqz v10, :cond_3

    iget-wide v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    move-wide/from16 v25, v0

    iget-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->oid:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-nez v25, :cond_3

    .line 188
    iget-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->oid:J

    .line 189
    iget-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->did:J

    .line 191
    :cond_3
    const-string v25, "morning"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "\u62a2\u5355\u540eTCP\u53f8\u673aID\u4e3a"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    iget-wide v0, v11, Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;->did:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->ACCEPT:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .end local v11           #orderAcceptEvent:Lcom/didi/ddrive/eventbus/event/OrderAcceptedEvent;
    .end local v14           #orderaccemsg:Lcom/didi/ddrive/net/tcp/message/OrderAcceptMessage;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;

    .line 196
    .local v17, paymentmsg:Lcom/didi/ddrive/net/tcp/message/PaymentMessage;
    const-string v25, "Connection-drive"

    invoke-virtual/range {v17 .. v17}, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 201
    new-instance v16, Lcom/didi/ddrive/eventbus/event/PaymentEvent;

    invoke-direct/range {v16 .. v16}, Lcom/didi/ddrive/eventbus/event/PaymentEvent;-><init>()V

    .line 202
    .local v16, payEvent:Lcom/didi/ddrive/eventbus/event/PaymentEvent;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/PaymentEvent;->did:J

    .line 203
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/PaymentMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/PaymentEvent;->oid:J

    .line 205
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->SUBMIT_CHARGE:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    .end local v16           #payEvent:Lcom/didi/ddrive/eventbus/event/PaymentEvent;
    .end local v17           #paymentmsg:Lcom/didi/ddrive/net/tcp/message/PaymentMessage;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;

    .line 209
    .local v20, startoffmsg:Lcom/didi/ddrive/net/tcp/message/StartOffMessage;
    const-string v25, "Connection-drive"

    invoke-virtual/range {v20 .. v20}, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->oid:J

    move-wide/from16 v25, v0

    cmp-long v25, v12, v25

    if-nez v25, :cond_0

    .line 214
    new-instance v19, Lcom/didi/ddrive/eventbus/event/StartOffEvent;

    invoke-direct/range {v19 .. v19}, Lcom/didi/ddrive/eventbus/event/StartOffEvent;-><init>()V

    .line 215
    .local v19, startOffEvent:Lcom/didi/ddrive/eventbus/event/StartOffEvent;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->did:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->did:J

    .line 216
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->oid:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->oid:J

    .line 217
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->driverLat:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->lat:D

    .line 218
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/didi/ddrive/net/tcp/message/StartOffMessage;->driverLng:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->lng:D

    .line 221
    if-eqz v10, :cond_4

    .line 222
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->lat:D

    move-wide/from16 v25, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/didi/ddrive/eventbus/event/StartOffEvent;->lng:D

    move-wide/from16 v27, v0

    move-wide/from16 v0, v25

    move-wide/from16 v2, v27

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/didi/ddrive/model/DDriveOrder;->updateDriverLocation(DD)V

    .line 225
    :cond_4
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->END_SERVICE:Lcom/didi/ddrive/model/OrderState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 229
    .end local v19           #startOffEvent:Lcom/didi/ddrive/eventbus/event/StartOffEvent;
    .end local v20           #startoffmsg:Lcom/didi/ddrive/net/tcp/message/StartOffMessage;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/SomeoneAcceptMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/didi/ddrive/net/tcp/message/SomeoneAcceptMessage;

    .line 230
    .local v18, someoneAcceptMsg:Lcom/didi/ddrive/net/tcp/message/SomeoneAcceptMessage;
    goto/16 :goto_0

    .line 233
    .end local v18           #someoneAcceptMsg:Lcom/didi/ddrive/net/tcp/message/SomeoneAcceptMessage;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/didi/ddrive/net/tcp/InMessage;->msg:Ljava/lang/String;

    move-object/from16 v25, v0

    const-class v26, Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    invoke-static/range {v25 .. v26}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/didi/ddrive/net/tcp/message/StreamMessage;

    .line 234
    .local v21, streamMessage:Lcom/didi/ddrive/net/tcp/message/StreamMessage;
    if-eqz v21, :cond_0

    .line 237
    invoke-static {}, Lcom/didi/ddrive/managers/StreamMessageManager;->getInstance()Lcom/didi/ddrive/managers/StreamMessageManager;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/didi/ddrive/managers/StreamMessageManager;->addMessage(Lcom/didi/ddrive/net/tcp/message/StreamMessage;)V

    goto/16 :goto_0

    .line 240
    .end local v21           #streamMessage:Lcom/didi/ddrive/net/tcp/message/StreamMessage;
    :sswitch_9
    if-eqz v10, :cond_5

    .line 241
    sget-object v25, Lcom/didi/ddrive/model/PayState;->Payed:Lcom/didi/ddrive/model/PayState;

    move-object/from16 v0, v25

    iput-object v0, v10, Lcom/didi/ddrive/model/DDriveOrder;->payState:Lcom/didi/ddrive/model/PayState;

    .line 243
    :cond_5
    invoke-static {}, Lcom/didi/ddrive/managers/OrderStateManager;->getInstance()Lcom/didi/ddrive/managers/OrderStateManager;

    move-result-object v25

    sget-object v26, Lcom/didi/ddrive/model/OrderState;->PAYED:Lcom/didi/ddrive/model/OrderState;

    new-instance v27, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;

    invoke-direct/range {v27 .. v27}, Lcom/didi/ddrive/eventbus/event/DriverAcceptedCashEvent;-><init>()V

    invoke-virtual/range {v25 .. v27}, Lcom/didi/ddrive/managers/OrderStateManager;->updateOrderState(Lcom/didi/ddrive/model/OrderState;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 246
    :sswitch_a
    invoke-static {}, Lcom/didi/ddrive/payment/PaymentManager;->getInstance()Lcom/didi/ddrive/payment/PaymentManager;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/didi/ddrive/payment/PaymentManager;->notifyOrderChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_2
        0x7d4 -> :sswitch_6
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_5
        0xfa1 -> :sswitch_9
        0xfa7 -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public bridge synthetic dispatch(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->dispatch(Ljava/util/List;)V

    return-void
.end method

.method public dispatch(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/tcp/InMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, messages:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 99
    :cond_0
    const-string v2, "Connection-drive"

    const-string v3, "dispatch message : null"

    invoke-static {v2, v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_1
    return-void

    .line 102
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/ddrive/net/tcp/InMessage;

    .line 103
    .local v1, message:Lcom/didi/ddrive/net/tcp/InMessage;
    invoke-direct {p0, v1}, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->dispatchMessage(Lcom/didi/ddrive/net/tcp/InMessage;)V

    goto :goto_0
.end method

.method public onConnectionCreate(Ljava/lang/String;)V
    .locals 6
    .parameter "tag"

    .prologue
    .line 264
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveAccountManager;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 265
    invoke-static {}, Lcom/didi/ddrive/managers/DriveAccountManager;->getInstance()Lcom/didi/ddrive/managers/DriveAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/ddrive/managers/DriveAccountManager;->getUser()Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;

    move-result-object v1

    .line 267
    .local v1, user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    invoke-static {}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getInstance()Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/didi/ddrive/net/tcp/tcp/ConnectionManager;->getMessageSender(Ljava/lang/String;)Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->mMessageSender:Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    .line 268
    new-instance v3, Lcom/didi/ddrive/net/tcp/send/VerifyMessage;

    invoke-direct {v3}, Lcom/didi/ddrive/net/tcp/send/VerifyMessage;-><init>()V

    .line 269
    .local v3, verifyMsg:Lcom/didi/ddrive/net/tcp/send/VerifyMessage;
    iget-wide v4, v1, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->pid:J

    iput-wide v4, v3, Lcom/didi/ddrive/net/tcp/send/VerifyMessage;->sid:J

    .line 270
    new-instance v0, Lcom/didi/ddrive/net/tcp/send/TokenMessage;

    invoke-direct {v0}, Lcom/didi/ddrive/net/tcp/send/TokenMessage;-><init>()V

    .line 271
    .local v0, tokenMsg:Lcom/didi/ddrive/net/tcp/send/TokenMessage;
    iget-object v4, v1, Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;->token:Ljava/lang/String;

    iput-object v4, v0, Lcom/didi/ddrive/net/tcp/send/TokenMessage;->token:Ljava/lang/String;

    .line 272
    invoke-static {v0}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/didi/ddrive/net/tcp/send/VerifyMessage;->msg:Ljava/lang/String;

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/didi/ddrive/util/JsonUtil;->jsonFromObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, verify:Ljava/lang/String;
    iget-object v4, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->mMessageSender:Lcom/didi/ddrive/net/tcp/tcp/MessageSender;

    invoke-interface {v4, v2}, Lcom/didi/ddrive/net/tcp/tcp/MessageSender;->sendMessage(Ljava/lang/String;)V

    .line 277
    .end local v0           #tokenMsg:Lcom/didi/ddrive/net/tcp/send/TokenMessage;
    .end local v1           #user:Lcom/didi/ddrive/preferences/KDPreferenceDrive$User;
    .end local v2           #verify:Ljava/lang/String;
    .end local v3           #verifyMsg:Lcom/didi/ddrive/net/tcp/send/VerifyMessage;
    :cond_0
    return-void
.end method

.method public bridge synthetic read(Lcom/didi/ddrive/net/tcp/tcp/Channel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->read(Lcom/didi/ddrive/net/tcp/tcp/Channel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/didi/ddrive/net/tcp/tcp/Channel;)Ljava/util/List;
    .locals 13
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/ddrive/net/tcp/tcp/Channel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/didi/ddrive/net/tcp/InMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/didi/ddrive/net/tcp/tcp/ChannelException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 63
    const/16 v8, 0x2800

    new-array v0, v8, [B

    .line 65
    .local v0, buffer:[B
    invoke-interface {p1, v0}, Lcom/didi/ddrive/net/tcp/tcp/Channel;->read([B)I

    move-result v1

    .line 66
    .local v1, len:I
    if-lez v1, :cond_1

    .line 67
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v11, v1}, Ljava/lang/String;-><init>([BII)V

    .line 68
    .local v2, line:Ljava/lang/String;
    iget-object v8, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->stringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v8, "Connection-drive"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "driver tcp receive : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    const/4 v7, -0x1

    .line 77
    .local v7, seperator:I
    :cond_0
    iget-object v8, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->stringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 78
    if-ne v7, v12, :cond_2

    .line 93
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    .end local v7           #seperator:I
    :goto_0
    return-object v3

    .line 71
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 81
    .restart local v2       #line:Ljava/lang/String;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    .restart local v7       #seperator:I
    :cond_2
    iget-object v8, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->stringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 82
    .local v5, message:Ljava/lang/String;
    iget-object v8, p0, Lcom/didi/ddrive/net/tcp/DriveMessageDispatcher;->stringBuffer:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v11, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 84
    :try_start_0
    const-class v8, Lcom/didi/ddrive/net/tcp/InMessage;

    invoke-static {v5, v8}, Lcom/didi/ddrive/util/JsonUtil;->objectFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/didi/ddrive/net/tcp/InMessage;

    .line 85
    .local v6, msg:Lcom/didi/ddrive/net/tcp/InMessage;
    if-nez v3, :cond_3

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    move-object v3, v4

    .line 88
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Lcom/didi/ddrive/net/tcp/InMessage;>;"
    :cond_3
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v6           #msg:Lcom/didi/ddrive/net/tcp/InMessage;
    :goto_1
    if-ne v7, v12, :cond_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v8

    goto :goto_1
.end method
