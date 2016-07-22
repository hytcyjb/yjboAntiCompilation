.class public final enum Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
.super Ljava/lang/Enum;
.source "AVIMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/im/v2/AVIMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AVIMClientStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

.field public static final enum AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;


# instance fields
.field code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const-string v1, "AVIMClientStatusNone"

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v3, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 409
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const-string v1, "AVIMClientStatusOpened"

    const/16 v2, 0x6f

    invoke-direct {v0, v1, v4, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 413
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    const-string v1, "AVIMClientStatusPaused"

    const/16 v2, 0x78

    invoke-direct {v0, v1, v5, v2}, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    .line 401
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 418
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->code:I

    .line 419
    return-void
.end method

.method static getClientStatus(I)Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1
    .parameter

    .prologue
    .line 426
    sparse-switch p0, :sswitch_data_0

    .line 434
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 428
    :sswitch_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusNone:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    goto :goto_0

    .line 430
    :sswitch_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusOpened:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    goto :goto_0

    .line 432
    :sswitch_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->AVIMClientStatusPaused:Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    goto :goto_0

    .line 426
    :sswitch_data_0
    .sparse-switch
        0x6e -> :sswitch_0
        0x6f -> :sswitch_1
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1
    .parameter

    .prologue
    .line 401
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMClient$AVIMClientStatus;->code:I

    return v0
.end method
