.class public Lcom/didi/im/helper/IMChatHelper;
.super Ljava/lang/Object;
.source "IMChatHelper.java"


# static fields
.field private static AUDIO_RECORD_MIN_DURATION:I = 0x0

.field public static MAX_RECORD_TIME:I = 0x0

.field public static final PLAY_STATUS_NONE:I = 0x0

.field public static final PLAY_STATUS_PAUSE:I = 0x3

.field public static final PLAY_STATUS_PLAY:I = 0x2

.field public static final PLAY_STATUS_READY:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final SESSION_DELETED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SESSION_FROZEN:I = 0x0

.field private static SESSION_VALIDE_TIME:I = 0x0

.field public static final TEXT_MAX_INPUT_LENGTH:I = 0xc8

.field public static final VOICE_LAYOUT_MAX_WIDTH:I = 0x7f090206

.field public static final VOICE_LAYOUT_MIN_WIDTH:I = 0x7f090207

.field private static headMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static passengerHeads:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/didi/im/helper/IMChatHelper;->passengerHeads:[I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/im/helper/IMChatHelper;->headMaps:Ljava/util/HashMap;

    .line 56
    const/16 v0, 0x7530

    sput v0, Lcom/didi/im/helper/IMChatHelper;->MAX_RECORD_TIME:I

    .line 59
    const v0, 0x5265c00

    sput v0, Lcom/didi/im/helper/IMChatHelper;->SESSION_VALIDE_TIME:I

    .line 62
    const/16 v0, 0x1f4

    sput v0, Lcom/didi/im/helper/IMChatHelper;->AUDIO_RECORD_MIN_DURATION:I

    .line 74
    sget-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrFrozen:Lcom/didi/frame/protobuffer/RspCode;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/RspCode;->getValue()I

    move-result v0

    sput v0, Lcom/didi/im/helper/IMChatHelper;->SESSION_FROZEN:I

    .line 76
    sget-object v0, Lcom/didi/frame/protobuffer/RspCode;->kRspCodeSessionSvrVanished:Lcom/didi/frame/protobuffer/RspCode;

    invoke-virtual {v0}, Lcom/didi/frame/protobuffer/RspCode;->getValue()I

    move-result v0

    sput v0, Lcom/didi/im/helper/IMChatHelper;->SESSION_DELETED:I

    return-void

    .line 50
    :array_0
    .array-data 0x4
        0xe8t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNewMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/didi/im/model/IMChatRecord;
    .locals 6
    .parameter "sessionId"
    .parameter "currentUid"
    .parameter "messageType"
    .parameter "content"
    .parameter "voiceTime"

    .prologue
    .line 304
    invoke-static {p0}, Lcom/didi/im/db/IMDBDataHelper;->getMaxMidBySID(Ljava/lang/String;)I

    move-result v3

    .line 305
    .local v3, mId:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMChatRecord;>;"
    new-instance v0, Lcom/didi/im/model/IMChatRecord;

    invoke-direct {v0}, Lcom/didi/im/model/IMChatRecord;-><init>()V

    .line 307
    .local v0, chatRecord:Lcom/didi/im/model/IMChatRecord;
    invoke-virtual {v0, p2}, Lcom/didi/im/model/IMChatRecord;->setType(I)V

    .line 308
    iput-object p3, v0, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 309
    iput-object p0, v0, Lcom/didi/im/model/IMChatRecord;->SID:Ljava/lang/String;

    .line 310
    iput-object p1, v0, Lcom/didi/im/model/IMChatRecord;->UID:Ljava/lang/String;

    .line 311
    iput v3, v0, Lcom/didi/im/model/IMChatRecord;->MID:I

    .line 312
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/didi/im/model/IMChatRecord;->setStatus(I)V

    .line 313
    iput p4, v0, Lcom/didi/im/model/IMChatRecord;->voiceTime:I

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/didi/im/model/IMChatRecord;->createTime:J

    .line 315
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/didi/im/db/IMDBDataHelper;->insertOneChatRecord(Lcom/didi/im/model/IMChatRecord;Lcom/didi/im/db/IMDBDataHelper$DBCallbackListener;)I

    move-result v1

    .line 317
    .local v1, dbId:I
    iput v1, v0, Lcom/didi/im/model/IMChatRecord;->ID:I

    .line 318
    return-object v0
.end method

.method public static getAudioAmpLitude()I
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4024

    .line 208
    const/4 v2, 0x1

    .line 209
    .local v2, audioLevel:I
    invoke-static {}, Lcom/didi/im/helper/IMAudioHelper;->getAmplitude()D

    move-result-wide v0

    .line 210
    .local v0, amplitude:D
    cmpg-double v3, v0, v4

    if-gez v3, :cond_0

    .line 211
    const/4 v2, 0x1

    .line 218
    :goto_0
    return v2

    .line 212
    :cond_0
    cmpl-double v3, v0, v4

    if-ltz v3, :cond_1

    const-wide/high16 v3, 0x4034

    cmpg-double v3, v0, v3

    if-gez v3, :cond_1

    .line 213
    const/4 v2, 0x2

    goto :goto_0

    .line 215
    :cond_1
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static getCharacterNum(Ljava/lang/String;)I
    .locals 1
    .parameter "content"

    .prologue
    .line 354
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x0

    .line 357
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static getChineseNum(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, num:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 371
    .local v1, myChar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 372
    aget-char v3, v1, v0

    int-to-byte v3, v3

    int-to-char v3, v3

    aget-char v4, v1, v0

    if-eq v3, v4, :cond_0

    .line 373
    add-int/lit8 v2, v2, 0x1

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    return v2
.end method

.method public static getCommonSentence()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, commonSentences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/didi/im/db/IMDBDataHelper;->queryListCommonSentence()Ljava/util/ArrayList;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 120
    :cond_0
    const v1, 0x7f0b0387

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const v1, 0x7f0b0388

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const v1, 0x7f0b0389

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    const v1, 0x7f0b038a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-object v0
.end method

.method public static getCommonSentence(Lcom/didi/im/model/IMCommons;)Ljava/util/ArrayList;
    .locals 2
    .parameter "imCommons"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/didi/im/model/IMCommons;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v0, commonSentences:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    const v1, 0x7f0b0066

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    const v1, 0x7f0b0067

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const v1, 0x7f0b0068

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_0
    const v1, 0x7f0b038a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/didi/im/model/IMCommons;->getArrList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static getConversationTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sessionId"

    .prologue
    .line 193
    const-string v0, ""

    .line 194
    .local v0, conversationTitle:Ljava/lang/String;
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/didi/common/util/Utils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    .end local v0           #conversationTitle:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #conversationTitle:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b038e

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentUser(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;
    .locals 2
    .parameter "sId"
    .parameter "uId"

    .prologue
    .line 492
    invoke-static {p0, p1}, Lcom/didi/im/db/IMDBDataHelper;->queryOneImUserByID(Ljava/lang/String;Ljava/lang/String;)Lcom/didi/im/model/IMUser;

    move-result-object v0

    .line 493
    .local v0, user:Lcom/didi/im/model/IMUser;
    if-nez v0, :cond_0

    .line 494
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    new-instance v0, Lcom/didi/im/model/IMUser;

    .end local v0           #user:Lcom/didi/im/model/IMUser;
    invoke-direct {v0}, Lcom/didi/im/model/IMUser;-><init>()V

    .line 496
    .restart local v0       #user:Lcom/didi/im/model/IMUser;
    invoke-virtual {v0, p1}, Lcom/didi/im/model/IMUser;->setUID(Ljava/lang/String;)V

    .line 497
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMUser;->setName(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p0}, Lcom/didi/im/model/IMUser;->setSID(Ljava/lang/String;)V

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/im/model/IMUser;->setRole(I)V

    .line 502
    :cond_0
    return-object v0
.end method

.method public static getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "sessionId"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/didi/im/db/IMDBDataHelper;->queryDriverNickName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, driverNickName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 183
    .end local v2           #driverNickName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 169
    .restart local v2       #driverNickName:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    .line 170
    .local v0, business:Lcom/didi/frame/business/Business;
    sget-object v4, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    if-ne v0, v4, :cond_1

    .line 171
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v3

    check-cast v3, Lcom/didi/taxi/model/TaxiOrder;

    .line 172
    .local v3, taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 173
    invoke-virtual {v3}, Lcom/didi/taxi/model/TaxiOrder;->getTaxiDriver()Lcom/didi/taxi/model/TaxiDriver;

    move-result-object v4

    iget-object v2, v4, Lcom/didi/taxi/model/TaxiDriver;->name:Ljava/lang/String;

    goto :goto_0

    .line 175
    .end local v3           #taxiOrder:Lcom/didi/taxi/model/TaxiOrder;
    :cond_1
    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v0, v4, :cond_3

    .line 176
    :cond_2
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getSendable()Lcom/didi/frame/Sendable;

    move-result-object v1

    check-cast v1, Lcom/didi/car/model/CarOrder;

    .line 177
    .local v1, carOrder:Lcom/didi/car/model/CarOrder;
    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, v1, Lcom/didi/car/model/CarOrder;->carDriver:Lcom/didi/car/model/CarDriver;

    iget-object v2, v4, Lcom/didi/car/model/CarDriver;->name:Ljava/lang/String;

    goto :goto_0

    .line 183
    .end local v1           #carOrder:Lcom/didi/car/model/CarOrder;
    :cond_3
    const v4, 0x7f0b038b

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getIMTimeStampContent(J)Ljava/lang/String;
    .locals 6
    .parameter "time"

    .prologue
    const/4 v5, 0x1

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    .local v0, currentTime:J
    invoke-static {v0, v1, p0, p1}, Lcom/didi/im/helper/IMChatHelper;->isInOneDay(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 389
    invoke-static {p0, p1}, Lcom/didi/common/util/Utils;->convertDateTime(J)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    .line 391
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/didi/common/util/Utils;->convertIMDateTime(J)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/didi/common/util/Utils;->convertDateTime(J)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getImNotificationString(Ljava/lang/String;Lcom/didi/im/model/IMChatRecord;)Ljava/lang/String;
    .locals 3
    .parameter "sessionId"
    .parameter "chatRecord"

    .prologue
    .line 402
    const-string v0, ""

    .line 403
    .local v0, notiString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 404
    iget-object v0, p1, Lcom/didi/im/model/IMChatRecord;->content:Ljava/lang/String;

    .line 410
    :cond_0
    :goto_0
    return-object v0

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/didi/im/model/IMChatRecord;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 406
    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/didi/im/helper/IMChatHelper;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b038f

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_2
    const v1, 0x7f0b0390

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getPassengerHeadImage(Ljava/lang/String;)I
    .locals 4
    .parameter "uid"

    .prologue
    .line 264
    sget-object v3, Lcom/didi/im/helper/IMChatHelper;->headMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 265
    .local v2, resourceId:Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 273
    :goto_0
    return v3

    .line 268
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 269
    .local v1, random:Ljava/util/Random;
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 270
    .local v0, nextInt:I
    sget-object v3, Lcom/didi/im/helper/IMChatHelper;->passengerHeads:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 271
    sget-object v3, Lcom/didi/im/helper/IMChatHelper;->headMaps:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method public static getResendString()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v1, 0x7f0b039a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const v1, 0x7f0b038a

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-object v0
.end method

.method public static getVoiceLayoutLength(I)I
    .locals 5
    .parameter "voiceTime"

    .prologue
    const/16 v4, 0x1e

    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, voiceLayout:I
    const v3, 0x7f090207

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v1, v3

    .line 470
    .local v1, minVoiceLength:I
    const v3, 0x7f090206

    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->computeScaledDimenByBalancedRatio(I)F

    move-result v3

    float-to-int v0, v3

    .line 471
    .local v0, maxVoiceLength:I
    if-lt p0, v4, :cond_0

    .line 472
    const/16 p0, 0x1e

    .line 474
    :cond_0
    if-nez p0, :cond_2

    .line 475
    move v2, v1

    .line 481
    :cond_1
    :goto_0
    return v2

    .line 476
    :cond_2
    if-ne p0, v4, :cond_3

    .line 477
    move v2, v0

    goto :goto_0

    .line 478
    :cond_3
    if-lez p0, :cond_1

    if-ge p0, v4, :cond_1

    .line 479
    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x1d

    add-int/lit8 v4, p0, -0x1

    mul-int/2addr v3, v4

    add-int v2, v1, v3

    goto :goto_0
.end method

.method public static getVoiceTime(I)I
    .locals 6
    .parameter "voiceTime"

    .prologue
    const/4 v2, 0x1

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, voiceTimeShow:I
    sget v3, Lcom/didi/im/helper/IMChatHelper;->AUDIO_RECORD_MIN_DURATION:I

    if-lt p0, v3, :cond_0

    const/16 v3, 0x3e8

    if-gt p0, v3, :cond_0

    .line 95
    const/4 v1, 0x1

    .line 100
    :goto_0
    return v1

    .line 97
    :cond_0
    div-int/lit16 v4, p0, 0x3e8

    rem-int/lit16 v3, p0, 0x3e8

    const/16 v5, 0x1f4

    if-le v3, v5, :cond_1

    move v3, v2

    :goto_1
    add-int v0, v4, v3

    .line 98
    .local v0, time:I
    if-lez v0, :cond_2

    move v1, v0

    :goto_2
    goto :goto_0

    .line 97
    .end local v0           #time:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .restart local v0       #time:I
    :cond_2
    move v1, v2

    .line 98
    goto :goto_2
.end method

.method public static getVoiceTime(JZ)I
    .locals 2
    .parameter "recordTime"
    .parameter "autoSend"

    .prologue
    .line 105
    if-eqz p2, :cond_0

    .line 106
    sget v0, Lcom/didi/im/helper/IMChatHelper;->MAX_RECORD_TIME:I

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static isActivityBackGroud(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 439
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 440
    .local v2, manager:Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 441
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, className:Ljava/lang/String;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v6, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v4, v6, :cond_0

    const-class v4, Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 443
    .local v3, targetStr:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 444
    const/4 v4, 0x1

    .line 447
    :goto_1
    return v4

    .line 442
    .end local v3           #targetStr:Ljava/lang/String;
    :cond_0
    const-class v4, Lcom/didi/im/activity/ConversationActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .restart local v3       #targetStr:Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 447
    goto :goto_1
.end method

.method public static isActivityTopFront(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 452
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 453
    .local v2, manager:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, className:Ljava/lang/String;
    const-class v3, Lcom/didi/im/activity/ConversationActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    const/4 v3, 0x1

    .line 459
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static isAudioDurationTooShort(J)Z
    .locals 4
    .parameter "recordTime"

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sget v2, Lcom/didi/im/helper/IMChatHelper;->AUDIO_RECORD_MIN_DURATION:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentSeesionDriver(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "driverUid"
    .parameter "chatUid"

    .prologue
    .line 254
    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCurrentUser(Ljava/lang/String;)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 242
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPsngrId()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, currentUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInOneDay(JJ)Z
    .locals 3
    .parameter "timeA"
    .parameter "timeB"

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {p0, p1}, Lcom/didi/common/util/Utils;->convertIMDateTime(J)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p2, p3}, Lcom/didi/common/util/Utils;->convertIMDateTime(J)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMessageExist(Ljava/util/ArrayList;Lcom/didi/im/model/IMDTOChatRecordAndUser;)Z
    .locals 4
    .parameter
    .parameter "record"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ">;",
            "Lcom/didi/im/model/IMDTOChatRecordAndUser;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, chatRecords:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/im/model/IMDTOChatRecordAndUser;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/im/model/IMDTOChatRecordAndUser;

    .line 514
    .local v0, chatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    invoke-virtual {v0}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v2

    iget v2, v2, Lcom/didi/im/model/IMChatRecord;->MID:I

    invoke-virtual {p1}, Lcom/didi/im/model/IMDTOChatRecordAndUser;->getChatRecord()Lcom/didi/im/model/IMChatRecord;

    move-result-object v3

    iget v3, v3, Lcom/didi/im/model/IMChatRecord;->MID:I

    if-ne v2, v3, :cond_0

    .line 515
    const/4 v2, 0x1

    .line 518
    .end local v0           #chatRecordAndUser:Lcom/didi/im/model/IMDTOChatRecordAndUser;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSessionOut(J)Z
    .locals 5
    .parameter "createTime"

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, sessionOut:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    sget v3, Lcom/didi/im/helper/IMChatHelper;->SESSION_VALIDE_TIME:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V
    .locals 1
    .parameter "session"
    .parameter "bottomBar"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/didi/im/model/IMSession;->getDraft()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/didi/im/model/IMSession;->setDraft(Ljava/lang/String;)V

    .line 342
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/didi/im/component/ConversationBottomBar;->setInput(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionBySId(Lcom/didi/im/model/IMSession;Ljava/lang/String;)I

    .line 345
    :cond_0
    return-void
.end method

.method public static saveDraftIfExist(Lcom/didi/im/model/IMSession;Lcom/didi/im/component/ConversationBottomBar;)V
    .locals 2
    .parameter "session"
    .parameter "bottomBar"

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/didi/im/component/ConversationBottomBar;->getInput()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 329
    .local v0, draft:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/didi/im/model/IMSession;->setDraft(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/didi/im/model/IMSession;->getSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/didi/im/db/IMDBDataHelper;->updateImSessionBySId(Lcom/didi/im/model/IMSession;Ljava/lang/String;)I

    .line 331
    return-void

    .line 328
    .end local v0           #draft:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/didi/im/component/ConversationBottomBar;->getInput()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setWindowHaflTransparent(Landroid/app/Activity;F)V
    .locals 2
    .parameter "activity"
    .parameter "alpha"

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 423
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 425
    return-void
.end method

.method public static vibrate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 433
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 434
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 435
    return-void
.end method
