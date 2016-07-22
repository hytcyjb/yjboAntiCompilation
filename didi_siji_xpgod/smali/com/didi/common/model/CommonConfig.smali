.class public Lcom/didi/common/model/CommonConfig;
.super Lcom/didi/common/model/BaseObject;
.source "CommonConfig.java"


# instance fields
.field public carRemark:Ljava/lang/String;

.field public cityList:Lcom/didi/common/model/CityList;

.field public commentTip:Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public complaintTipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public coorDistance:I

.field public coor_interval:I

.field public finishOrderReasonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inviteItemTitle:Ljava/lang/String;

.field public inviteItemVersion:Ljava/lang/String;

.field public invitePageUrl:Ljava/lang/String;

.field public isInviteSwitch:Z

.field public mSNSConfig:Lcom/didi/common/model/SNSConfig;

.field public noticeTip:Ljava/lang/String;

.field public poll_interval:I

.field public pushFileIp:Ljava/lang/String;

.field public pushFilePort:I

.field public pushIp:Ljava/lang/String;

.field public pushPort:I

.field public reasonNum:Ljava/lang/String;

.field public reasonTitle:Ljava/lang/String;

.field public recallTipOnTime:Ljava/lang/String;

.field public recallTipPre:Ljava/lang/String;

.field public remarkPopTime:I

.field public remarkPopmsg:Ljava/lang/String;

.field public remarkTagValue:Ljava/lang/String;

.field public rootDomain:Ljava/lang/String;

.field public showMall:I

.field public showaccountinfo:Ljava/lang/String;

.field public taxiPreRemark:Ljava/lang/String;

.field public taxiRemark:Ljava/lang/String;

.field public thridDomain:Ljava/lang/String;

.field public version:J

.field public voiceLimitTime:I

.field public waitTip:Ljava/lang/String;

.field public weiboInviteMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/didi/common/model/BaseObject;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/CommonConfig;->reasonNum:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/common/model/CommonConfig;->reasonTitle:Ljava/lang/String;

    .line 65
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/didi/common/model/CommonConfig;->poll_interval:I

    .line 67
    const/16 v0, 0x2328

    iput v0, p0, Lcom/didi/common/model/CommonConfig;->coor_interval:I

    return-void
.end method

.method private checkSNSPicture()Z
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    invoke-virtual {v0}, Lcom/didi/common/model/SNSConfig;->deleteWeiboSharePicture()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const/4 v0, 0x0

    .line 519
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/common/model/SNSConfig;->loadPicture(Lcom/didi/common/model/SNSConfig$ImageLoadListener;)V

    .line 519
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseSNSConfig(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 323
    const-string v0, "share"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v0, "share"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 326
    const-string v0, "wb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "wb"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 329
    new-instance v0, Lcom/didi/common/model/SNSConfig;

    invoke-direct {v0}, Lcom/didi/common/model/SNSConfig;-><init>()V

    iput-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    .line 330
    iget-object v0, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    invoke-virtual {v0, p1}, Lcom/didi/common/model/SNSConfig;->parse(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public getComplaintTipString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->complaintTipList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    const-string v3, ""

    .line 356
    :goto_0
    return-object v3

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->complaintTipList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 347
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 348
    const-string v3, ""

    goto :goto_0

    .line 350
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 353
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, e:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 356
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 357
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getFinishOrderReasonListString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 362
    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->finishOrderReasonList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    const-string v3, ""

    .line 374
    :goto_0
    return-object v3

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->finishOrderReasonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 365
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 366
    const-string v3, ""

    goto :goto_0

    .line 368
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v2, sb:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, e:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 374
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 375
    :cond_2
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 30
    .parameter "obj"

    .prologue
    .line 106
    const-string v26, "Commonconfig"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v26, "Commonconfig"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "version:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/didi/common/config/Preferences;->getCommonConfigVersion1()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v26, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/didi/common/model/CommonConfig;->version:J

    .line 109
    const-string v26, "push_ip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->pushIp:Ljava/lang/String;

    .line 110
    const-string v26, "push_port"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->pushPort:I

    .line 111
    const-string v26, "imfile_push_ip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->pushFileIp:Ljava/lang/String;

    .line 112
    const-string v26, "imfile_push_port"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->pushFilePort:I

    .line 113
    const-string v26, "invite_switch"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    const/16 v26, 0x1

    :goto_0
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/didi/common/model/CommonConfig;->isInviteSwitch:Z

    .line 114
    const-string v26, "coord_distance"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->coorDistance:I

    .line 116
    const-string v26, "remark_popmsg"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->remarkPopmsg:Ljava/lang/String;

    .line 117
    const-string v26, "remark_tagvalue"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->remarkTagValue:Ljava/lang/String;

    .line 118
    const-string v26, "remark_poptime"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->remarkPopTime:I

    .line 120
    const-string v26, "company"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->company:Ljava/lang/String;

    .line 121
    const-string v26, "poll_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    .line 122
    const-string v26, "poll_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->poll_interval:I

    .line 124
    :cond_0
    const-string v26, "coor_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 125
    const-string v26, "coor_interval"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->coor_interval:I

    .line 127
    :cond_1
    const-string v26, "weibo_invite"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->weiboInviteMessage:Ljava/lang/String;

    .line 128
    const-string v26, "complaint_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/didi/common/model/JSONHelper;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->complaintTipList:Ljava/util/ArrayList;

    .line 129
    const-string v26, "orderover_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/didi/common/model/JSONHelper;->parseArray(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->finishOrderReasonList:Ljava/util/ArrayList;

    .line 130
    const-string v26, "comment_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->commentTip:Ljava/lang/String;

    .line 131
    const-string v26, "showaccountinfo"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->showaccountinfo:Ljava/lang/String;

    .line 132
    const-string v26, "creditswitch"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->showMall:I

    .line 133
    const-string v26, "wait_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->waitTip:Ljava/lang/String;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/model/CommonConfig;->isAvailable()Z

    move-result v5

    .line 136
    .local v5, available:Z
    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/model/CommonConfig;->shouldUpdateConfig()Z

    move-result v23

    .line 138
    .local v23, update:Z
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Configavailable="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 139
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Configupdate="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    const-string v26, "config"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "available"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " update:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  checksns:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v5, :cond_2

    if-nez v23, :cond_4

    .line 315
    :cond_2
    :goto_1
    return-void

    .line 113
    .end local v5           #available:Z
    .end local v23           #update:Z
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 146
    .restart local v5       #available:Z
    .restart local v23       #update:Z
    :cond_4
    const-string v26, "sns_share"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 147
    const-string v26, "sns_share"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 150
    .local v21, shareObj:Lorg/json/JSONObject;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const-string v26, "QZone"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setQzoneShareOpen(Z)V

    .line 151
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const-string v26, "QQ"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    const/16 v26, 0x1

    :goto_3
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setQqShareOpen(Z)V

    .line 152
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const-string v26, "sinaWeibo"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    const/16 v26, 0x1

    :goto_4
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setWeiboShareOpen(Z)V

    .line 155
    .end local v21           #shareObj:Lorg/json/JSONObject;
    :cond_5
    const-string v26, "recall_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 156
    const-string v26, "recall_tip"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 157
    .local v22, tipObj:Lorg/json/JSONObject;
    const-string v26, "ontime"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 158
    const-string v26, "ontime"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 159
    .local v4, array:Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-lez v26, :cond_6

    .line 161
    const/16 v26, 0x0

    :try_start_0
    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->recallTipOnTime:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v4           #array:Lorg/json/JSONArray;
    :cond_6
    :goto_5
    const-string v26, "pre"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->recallTipPre:Ljava/lang/String;

    .line 169
    .end local v22           #tipObj:Lorg/json/JSONObject;
    :cond_7
    const-string v26, "publicize"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 170
    const-string v26, "publicize"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 171
    .local v17, ja:Lorg/json/JSONArray;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    if-nez v17, :cond_15

    const-string v26, ""

    :goto_6
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setPublicize(Ljava/lang/String;)V

    .line 174
    .end local v17           #ja:Lorg/json/JSONArray;
    :cond_8
    const-string v26, "domain_white_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 175
    const-string v26, "domain_white_list"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 176
    .local v20, objDomain:Lorg/json/JSONObject;
    const-string v26, "root_domain"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 177
    const-string v26, "root_domain"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\\\"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    .line 187
    :cond_9
    const-string v26, "third_party_domain"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 188
    const-string v26, "third_party_domain"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_a

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\\\"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    .line 200
    .end local v20           #objDomain:Lorg/json/JSONObject;
    :cond_a
    const-string v26, "orderover_title"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->noticeTip:Ljava/lang/String;

    .line 202
    const-string v26, "audio_time"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/didi/common/model/CommonConfig;->voiceLimitTime:I

    .line 203
    const-string v26, "orderover_tip_id"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/model/CommonConfig;->parseOverArray(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 204
    const-string v26, "invite_info"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/model/CommonConfig;->parseOverArrayInvite(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 205
    new-instance v26, Lcom/didi/common/model/CityList;

    invoke-direct/range {v26 .. v26}, Lcom/didi/common/model/CityList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->cityList:Lcom/didi/common/model/CityList;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->cityList:Lcom/didi/common/model/CityList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/didi/common/model/CityList;->parse(Lorg/json/JSONObject;)V

    .line 207
    invoke-direct/range {p0 .. p1}, Lcom/didi/common/model/CommonConfig;->parseSNSConfig(Lorg/json/JSONObject;)V

    .line 209
    const-string v26, "taxi_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 210
    const-string v26, "taxi_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\""

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    .line 216
    :cond_b
    const-string v26, "taxi_pre_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 217
    const-string v26, "taxi_pre_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_c

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\""

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    .line 224
    :cond_c
    const-string v26, "wanliu_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 225
    const-string v26, "wanliu_extra_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_d

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\""

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    .line 231
    :cond_d
    const-string v26, "notify_center_is_open"

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 233
    .local v19, notify_center_is_open:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiRemark:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setTaxiLabels(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->carRemark:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setCarLabels(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->taxiPreRemark:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setTaxiPreLabels(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/model/CommonConfig;->isInviteSwitch:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setInviteSwitch(Z)V

    .line 237
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemTitle:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setInviteSwitchTitle(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->invitePageUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setInviteSwitchUrl(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const/16 v26, 0x1

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    const/16 v26, 0x1

    :goto_7
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setNoticationMessage(Z)V

    .line 241
    const-string v26, "config"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "toPeries:title:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemTitle:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "  url:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->invitePageUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " isswitch:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/model/CommonConfig;->isInviteSwitch:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " inviteItemVersion:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " prefenceversion:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/didi/common/config/Preferences;->getInviteItemVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_e

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/didi/common/config/Preferences;->getInviteItemVersion()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/didi/common/model/CommonConfig;->isInviteSwitch:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 247
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setInviteRedPoint(Z)V

    .line 251
    :cond_e
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setInviteItemVersion(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setRootDomain(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setThirdDomain(Ljava/lang/String;)V

    .line 263
    const-string v26, "applist_config"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 264
    .local v3, appListConfigJson:Lorg/json/JSONObject;
    if-eqz v3, :cond_f

    .line 265
    const-string v26, "delay_times"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 266
    .local v13, delayTime:I
    const-string v26, "day_times"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 267
    .local v12, dayTimes:I
    const-string v26, "week_times"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    .line 268
    .local v25, weekTimes:I
    const-string v26, "is_listener"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    .line 269
    .local v16, isListener:I
    const-string v26, "is_action"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 271
    .local v15, isAction:I
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v15, v0, :cond_17

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setAction(Z)V

    .line 272
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/didi/common/config/Preferences;->setAppWatcherDelayTime(I)V

    .line 273
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/didi/common/config/Preferences;->setAppWatcherMaxRunTimesInDay(I)V

    .line 274
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setAppWatcherMaxRunTimesInWeek(I)V

    .line 275
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v27

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/config/Preferences;->setAppWatcherListenFlag(Z)V

    .line 279
    .end local v12           #dayTimes:I
    .end local v13           #delayTime:I
    .end local v15           #isAction:I
    .end local v16           #isListener:I
    .end local v25           #weekTimes:I
    :cond_f
    const-string v26, "default_tab_memory"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 280
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    const-string v27, "default_tab_memory"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/didi/common/config/Preferences;->setTabMemory(I)V

    .line 282
    :cond_10
    const-string v26, "didialift_config"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 283
    .local v18, jsonObject:Lorg/json/JSONObject;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "BtsRemark="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 284
    const-string v26, "didialift_config"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 285
    const-string v26, "didialift_config"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 286
    .local v8, btsObject:Lorg/json/JSONObject;
    if-eqz v8, :cond_11

    .line 287
    const-string v26, "creation_text"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, creation_text:Ljava/lang/String;
    const-string v26, "creation_link"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 289
    .local v10, creation_link:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setCreationTxt(Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setCreationLink(Ljava/lang/String;)V

    .line 291
    const-string v26, "extra_info"

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, btsremark:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "BtsRemark="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 293
    invoke-static {v9}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 294
    const-string v26, "\""

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 295
    const/16 v26, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 296
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "BtsRemark="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setBtsRemarkLabel(Ljava/lang/String;)V

    .line 303
    .end local v8           #btsObject:Lorg/json/JSONObject;
    .end local v9           #btsremark:Ljava/lang/String;
    .end local v10           #creation_link:Ljava/lang/String;
    .end local v11           #creation_text:Ljava/lang/String;
    :cond_11
    const-string v26, "didialift"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 305
    const-string v26, "didialift"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 306
    .local v7, bts:Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 308
    const-string v26, "url"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 309
    .local v24, url:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setBtsGuideImageUrl(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, b:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "BeatlesConfig="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v26

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->setBeatlesConfigArray(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 150
    .end local v3           #appListConfigJson:Lorg/json/JSONObject;
    .end local v6           #b:Ljava/lang/String;
    .end local v7           #bts:Lorg/json/JSONObject;
    .end local v18           #jsonObject:Lorg/json/JSONObject;
    .end local v19           #notify_center_is_open:I
    .end local v24           #url:Ljava/lang/String;
    .restart local v21       #shareObj:Lorg/json/JSONObject;
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 151
    :cond_13
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 152
    :cond_14
    const/16 v26, 0x0

    goto/16 :goto_4

    .line 162
    .end local v21           #shareObj:Lorg/json/JSONObject;
    .restart local v4       #array:Lorg/json/JSONArray;
    .restart local v22       #tipObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 163
    .local v14, e:Lorg/json/JSONException;
    invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 171
    .end local v4           #array:Lorg/json/JSONArray;
    .end local v14           #e:Lorg/json/JSONException;
    .end local v22           #tipObj:Lorg/json/JSONObject;
    .restart local v17       #ja:Lorg/json/JSONArray;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_6

    .line 239
    .end local v17           #ja:Lorg/json/JSONArray;
    .restart local v19       #notify_center_is_open:I
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 271
    .restart local v3       #appListConfigJson:Lorg/json/JSONObject;
    .restart local v12       #dayTimes:I
    .restart local v13       #delayTime:I
    .restart local v15       #isAction:I
    .restart local v16       #isListener:I
    .restart local v25       #weekTimes:I
    :cond_17
    const/16 v26, 0x0

    goto/16 :goto_8

    .line 275
    :cond_18
    const/16 v26, 0x0

    goto/16 :goto_9
.end method

.method public parseOverArray(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .parameter "obj"
    .parameter "key"

    .prologue
    .line 396
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 399
    .local v0, array:Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 403
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/CommonConfig;->reasonNum:Ljava/lang/String;

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/model/CommonConfig;->reasonTitle:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    .line 408
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public parseOverArrayInvite(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .parameter "obj"
    .parameter "key"

    .prologue
    .line 382
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 383
    .local v0, jsonObject:Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 384
    const-string v1, "config"

    const-string v2, "invitejsonobject:nulL"

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 388
    :cond_0
    const-string v1, "invite_item_title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/CommonConfig;->inviteItemTitle:Ljava/lang/String;

    .line 389
    const-string v1, "invite_page_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/CommonConfig;->invitePageUrl:Ljava/lang/String;

    .line 390
    const-string v1, "invite_item_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    .line 391
    const-string v1, "config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f00\u59cb\u89e3\u6790invite:   title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->inviteItemTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->invitePageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inviteversion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->inviteItemVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public save()V
    .locals 12

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/didi/common/model/CommonConfig;->isAvailable()Z

    move-result v0

    .line 474
    .local v0, available:Z
    invoke-virtual {p0}, Lcom/didi/common/model/CommonConfig;->shouldUpdateConfig()Z

    move-result v8

    .line 475
    .local v8, update:Z
    invoke-direct {p0}, Lcom/didi/common/model/CommonConfig;->checkSNSPicture()Z

    move-result v1

    .line 476
    .local v1, checksns:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configavailable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configupdate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 478
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configchecksns="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 479
    const-string v9, "config"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "available"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " update:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  checksns:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/DidiApp;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/didi/common/util/Constant;->CONFIG_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    .local v3, fileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/didi/common/base/DidiApp;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/didi/common/util/Constant;->CONFIG_NAME_OLD:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 485
    .local v6, oldFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/didi/common/util/FileUtil;->delete(Ljava/lang/String;)Z

    .line 486
    invoke-virtual {p0}, Lcom/didi/common/model/CommonConfig;->toProperties()Ljava/util/Properties;

    move-result-object v7

    .line 487
    .local v7, prop:Ljava/util/Properties;
    const/4 v4, 0x0

    .line 489
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 494
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_1
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, v4, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v9

    iget-wide v10, p0, Lcom/didi/common/model/CommonConfig;->version:J

    invoke-virtual {v9, v10, v11}, Lcom/didi/common/config/Preferences;->setCommonConfigVersion1(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 499
    if-eqz v4, :cond_0

    .line 501
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 502
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v2

    .line 504
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 490
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 491
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 496
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 497
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    if-eqz v4, :cond_0

    .line 501
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 502
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 503
    :catch_3
    move-exception v2

    .line 504
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 499
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_2

    .line 501
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 502
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 505
    :cond_2
    :goto_2
    throw v9

    .line 503
    :catch_4
    move-exception v2

    .line 504
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public shouldUpdateConfig()Z
    .locals 4

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getconfig version Preferences:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCommonConfigVersion1()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 340
    iget-wide v0, p0, Lcom/didi/common/model/CommonConfig;->version:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/didi/common/model/CommonConfig;->version:J

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getCommonConfigVersion1()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toProperties()Ljava/util/Properties;
    .locals 6

    .prologue
    .line 418
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 419
    .local v1, prop:Ljava/util/Properties;
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->company:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 420
    const-string v2, "company"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->company:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->complaintTipList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    const-string v2, "complaint_tip"

    invoke-virtual {p0}, Lcom/didi/common/model/CommonConfig;->getComplaintTipString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->finishOrderReasonList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 425
    const-string v2, "orderover_tip"

    invoke-virtual {p0}, Lcom/didi/common/model/CommonConfig;->getFinishOrderReasonListString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->commentTip:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 428
    const-string v2, "comment_tip"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->commentTip:Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    :cond_3
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->waitTip:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 430
    const-string v2, "wait_tip"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->waitTip:Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    :cond_4
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->recallTipOnTime:Ljava/lang/String;

    invoke-static {v2}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 433
    const-string v2, "ontime"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->recallTipOnTime:Ljava/lang/String;

    const-string v4, "[\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\"]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 434
    const-string v2, "pre"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->recallTipPre:Ljava/lang/String;

    const-string v4, "[\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\"]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 436
    :cond_5
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->cityList:Lcom/didi/common/model/CityList;

    if-eqz v2, :cond_6

    .line 437
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->cityList:Lcom/didi/common/model/CityList;

    invoke-virtual {v2}, Lcom/didi/common/model/CityList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    .line 438
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/City;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConfigCityList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 439
    invoke-static {v0}, Lcom/didi/common/database/CityListHelper;->insertCity(Ljava/util/ArrayList;)V

    .line 440
    const-string v2, "city"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->cityList:Lcom/didi/common/model/CityList;

    invoke-virtual {v3}, Lcom/didi/common/model/CityList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 443
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/City;>;"
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------commonconfig rootdomain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->rootDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thriddomain:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->thridDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 444
    const-string v2, "remarkPopmsg"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->remarkPopmsg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 445
    const-string v2, "remarkTagValue"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->remarkTagValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 446
    const-string v2, "remarkPopTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/common/model/CommonConfig;->remarkPopTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    const-string v2, "version"

    iget-wide v3, p0, Lcom/didi/common/model/CommonConfig;->version:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 449
    const-string v2, "poll_interval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/common/model/CommonConfig;->poll_interval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    const-string v2, "coor_interval"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/common/model/CommonConfig;->coor_interval:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 451
    const-string v2, "orderover_title"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->noticeTip:Ljava/lang/String;

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    const-string v2, "orver_tip_id"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->reasonNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 453
    const-string v2, "orver_tip_title"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->reasonTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    const-string v2, "voice_time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/common/model/CommonConfig;->voiceLimitTime:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    const-string v2, "showaccountinfo"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->showaccountinfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 456
    const-string v2, "showmall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/didi/common/model/CommonConfig;->showMall:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 457
    const-string v2, "push_ip"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->pushIp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 458
    const-string v2, "push_port"

    iget v3, p0, Lcom/didi/common/model/CommonConfig;->pushPort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 459
    const-string v2, "file_ip"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->pushFileIp:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    const-string v2, "file_port"

    iget v3, p0, Lcom/didi/common/model/CommonConfig;->pushFilePort:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    const-string v2, "coorDistance"

    iget v3, p0, Lcom/didi/common/model/CommonConfig;->coorDistance:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    iget-object v2, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    if-eqz v2, :cond_7

    .line 464
    const-string v2, "wb"

    iget-object v3, p0, Lcom/didi/common/model/CommonConfig;->mSNSConfig:Lcom/didi/common/model/SNSConfig;

    invoke-virtual {v3}, Lcom/didi/common/model/SNSConfig;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 465
    :cond_7
    return-object v1
.end method
