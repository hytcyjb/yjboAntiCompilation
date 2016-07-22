.class public final Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DrivingFeeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/frame/protobuffer/DrivingFeeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder",
        "<",
        "Lcom/didi/frame/protobuffer/DrivingFeeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public actual_fee:Ljava/lang/Float;

.field public combo_fee:Ljava/lang/Float;

.field public combo_remain_distance:Ljava/lang/Float;

.field public combo_remain_time:Ljava/lang/Integer;

.field public combo_tips:Ljava/lang/String;

.field public combo_use_distance:Ljava/lang/Float;

.field public combo_use_time:Ljava/lang/Integer;

.field public cur_distance:Ljava/lang/Float;

.field public display_fee:Ljava/lang/Float;

.field public dynamic_price_msg:Ljava/lang/String;

.field public dynamic_price_title:Ljava/lang/String;

.field public empty_act_fee:Ljava/lang/Float;

.field public empty_distance:Ljava/lang/Float;

.field public empty_fee:Ljava/lang/Float;

.field public fastcar_time:Ljava/lang/Integer;

.field public fastcar_time_fee:Ljava/lang/Float;

.field public night_act_fee:Ljava/lang/Float;

.field public night_distance:Ljava/lang/Float;

.field public night_fee:Ljava/lang/Float;

.field public normal_act_fee:Ljava/lang/Float;

.field public normal_distance:Ljava/lang/Float;

.field public normal_fee:Ljava/lang/Float;

.field public slow_cur_time:Ljava/lang/Integer;

.field public slow_fee:Ljava/lang/Float;

.field public slow_time:Ljava/lang/Integer;

.field public start_fee:Ljava/lang/Float;

.field public timestamp:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 344
    return-void
.end method

.method public constructor <init>(Lcom/didi/frame/protobuffer/DrivingFeeInfo;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message$Builder;-><init>(Lcom/squareup/wire/Message;)V

    .line 348
    if-nez p1, :cond_0

    .line 376
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_distance:Ljava/lang/Float;

    .line 350
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->cur_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->cur_distance:Ljava/lang/Float;

    .line 351
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_distance:Ljava/lang/Float;

    .line 352
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_distance:Ljava/lang/Float;

    .line 353
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_time:Ljava/lang/Integer;

    .line 354
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_cur_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_cur_time:Ljava/lang/Integer;

    .line 355
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_fee:Ljava/lang/Float;

    .line 356
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->normal_act_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_act_fee:Ljava/lang/Float;

    .line 357
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_fee:Ljava/lang/Float;

    .line 358
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->empty_act_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_act_fee:Ljava/lang/Float;

    .line 359
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_fee:Ljava/lang/Float;

    .line 360
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->night_act_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_act_fee:Ljava/lang/Float;

    .line 361
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->slow_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_fee:Ljava/lang/Float;

    .line 362
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->display_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->display_fee:Ljava/lang/Float;

    .line 363
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->actual_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->actual_fee:Ljava/lang/Float;

    .line 364
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->timestamp:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->timestamp:Ljava/lang/Integer;

    .line 365
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->start_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->start_fee:Ljava/lang/Float;

    .line 366
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_fee:Ljava/lang/Float;

    .line 367
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_distance:Ljava/lang/Float;

    .line 368
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_use_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_time:Ljava/lang/Integer;

    .line 369
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_distance:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_distance:Ljava/lang/Float;

    .line 370
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_remain_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_time:Ljava/lang/Integer;

    .line 371
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->combo_tips:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_tips:Ljava/lang/String;

    .line 372
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time:Ljava/lang/Integer;

    .line 373
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->fastcar_time_fee:Ljava/lang/Float;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time_fee:Ljava/lang/Float;

    .line 374
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_title:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_title:Ljava/lang/String;

    .line 375
    iget-object v0, p1, Lcom/didi/frame/protobuffer/DrivingFeeInfo;->dynamic_price_msg:Ljava/lang/String;

    iput-object v0, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_msg:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public actual_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "actual_fee"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->actual_fee:Ljava/lang/Float;

    .line 495
    return-object p0
.end method

.method public build()Lcom/didi/frame/protobuffer/DrivingFeeInfo;
    .locals 2

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->checkRequiredFields()V

    .line 597
    new-instance v0, Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/didi/frame/protobuffer/DrivingFeeInfo;-><init>(Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;Lcom/didi/frame/protobuffer/DrivingFeeInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->build()Lcom/didi/frame/protobuffer/DrivingFeeInfo;

    move-result-object v0

    return-object v0
.end method

.method public combo_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_fee"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_fee:Ljava/lang/Float;

    .line 519
    return-object p0
.end method

.method public combo_remain_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_remain_distance"

    .prologue
    .line 542
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_distance:Ljava/lang/Float;

    .line 543
    return-object p0
.end method

.method public combo_remain_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_remain_time"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_remain_time:Ljava/lang/Integer;

    .line 551
    return-object p0
.end method

.method public combo_tips(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_tips"

    .prologue
    .line 558
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_tips:Ljava/lang/String;

    .line 559
    return-object p0
.end method

.method public combo_use_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_use_distance"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_distance:Ljava/lang/Float;

    .line 527
    return-object p0
.end method

.method public combo_use_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "combo_use_time"

    .prologue
    .line 534
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->combo_use_time:Ljava/lang/Integer;

    .line 535
    return-object p0
.end method

.method public cur_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "cur_distance"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->cur_distance:Ljava/lang/Float;

    .line 391
    return-object p0
.end method

.method public display_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "display_fee"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->display_fee:Ljava/lang/Float;

    .line 487
    return-object p0
.end method

.method public dynamic_price_msg(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "dynamic_price_msg"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_msg:Ljava/lang/String;

    .line 591
    return-object p0
.end method

.method public dynamic_price_title(Ljava/lang/String;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "dynamic_price_title"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->dynamic_price_title:Ljava/lang/String;

    .line 583
    return-object p0
.end method

.method public empty_act_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "empty_act_fee"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_act_fee:Ljava/lang/Float;

    .line 455
    return-object p0
.end method

.method public empty_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "empty_distance"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_distance:Ljava/lang/Float;

    .line 399
    return-object p0
.end method

.method public empty_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "empty_fee"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->empty_fee:Ljava/lang/Float;

    .line 447
    return-object p0
.end method

.method public fastcar_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "fastcar_time"

    .prologue
    .line 566
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time:Ljava/lang/Integer;

    .line 567
    return-object p0
.end method

.method public fastcar_time_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "fastcar_time_fee"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->fastcar_time_fee:Ljava/lang/Float;

    .line 575
    return-object p0
.end method

.method public night_act_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "night_act_fee"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_act_fee:Ljava/lang/Float;

    .line 471
    return-object p0
.end method

.method public night_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "night_distance"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_distance:Ljava/lang/Float;

    .line 407
    return-object p0
.end method

.method public night_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "night_fee"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->night_fee:Ljava/lang/Float;

    .line 463
    return-object p0
.end method

.method public normal_act_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "normal_act_fee"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_act_fee:Ljava/lang/Float;

    .line 439
    return-object p0
.end method

.method public normal_distance(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "normal_distance"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_distance:Ljava/lang/Float;

    .line 383
    return-object p0
.end method

.method public normal_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "normal_fee"

    .prologue
    .line 430
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->normal_fee:Ljava/lang/Float;

    .line 431
    return-object p0
.end method

.method public slow_cur_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "slow_cur_time"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_cur_time:Ljava/lang/Integer;

    .line 423
    return-object p0
.end method

.method public slow_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "slow_fee"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_fee:Ljava/lang/Float;

    .line 479
    return-object p0
.end method

.method public slow_time(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "slow_time"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->slow_time:Ljava/lang/Integer;

    .line 415
    return-object p0
.end method

.method public start_fee(Ljava/lang/Float;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "start_fee"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->start_fee:Ljava/lang/Float;

    .line 511
    return-object p0
.end method

.method public timestamp(Ljava/lang/Integer;)Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;
    .locals 0
    .parameter "timestamp"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/didi/frame/protobuffer/DrivingFeeInfo$Builder;->timestamp:Ljava/lang/Integer;

    .line 503
    return-object p0
.end method
