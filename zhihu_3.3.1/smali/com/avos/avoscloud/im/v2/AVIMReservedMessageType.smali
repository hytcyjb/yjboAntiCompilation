.class public final enum Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;
.super Ljava/lang/Enum;
.source "AVIMReservedMessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum AudioMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum FileMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum ImageMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum LocationMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum TextMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum UnsupportedMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

.field public static final enum VideoMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "UnsupportedMessageType"

    invoke-direct {v0, v1, v4, v4}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->UnsupportedMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 11
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "TextMessageType"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->TextMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 12
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "ImageMessageType"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->ImageMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 13
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "AudioMessageType"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->AudioMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 14
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "VideoMessageType"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->VideoMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 15
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "LocationMessageType"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->LocationMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 16
    new-instance v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    const-string v1, "FileMessageType"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->FileMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->UnsupportedMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->TextMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->ImageMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->AudioMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->VideoMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->LocationMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->FileMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->type:I

    .line 21
    return-void
.end method

.method public static getAVIMReservedMessageType(I)Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;
    .locals 1
    .parameter

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 44
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->UnsupportedMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    :goto_0
    return-object v0

    .line 30
    :pswitch_0
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->UnsupportedMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->TextMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->ImageMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 36
    :pswitch_3
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->AudioMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 38
    :pswitch_4
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->VideoMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 40
    :pswitch_5
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->LocationMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 42
    :pswitch_6
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->FileMessageType:Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    return-object v0
.end method

.method public static values()[Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->$VALUES:[Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    invoke-virtual {v0}, [Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/avos/avoscloud/im/v2/AVIMReservedMessageType;->type:I

    return v0
.end method
