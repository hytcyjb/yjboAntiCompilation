.class public final enum Lcom/didi/game/download/DownloadItem$State;
.super Ljava/lang/Enum;
.source "DownloadItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/game/download/DownloadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/game/download/DownloadItem$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/game/download/DownloadItem$State;

.field public static final enum BEFORE:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum CANCELLED:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum INSTALLED:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum LOADING:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum PAUSE:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum STARTED:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum SUCCESS:Lcom/didi/game/download/DownloadItem$State;

.field public static final enum WAITING:Lcom/didi/game/download/DownloadItem$State;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "BEFORE"

    invoke-direct {v0, v1, v4, v4}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5, v5}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->WAITING:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7, v7}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v8, v8}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "CANCELLED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "SUCCESS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    new-instance v0, Lcom/didi/game/download/DownloadItem$State;

    const-string v1, "INSTALLED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/game/download/DownloadItem$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/didi/game/download/DownloadItem$State;

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->WAITING:Lcom/didi/game/download/DownloadItem$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/didi/game/download/DownloadItem$State;->$VALUES:[Lcom/didi/game/download/DownloadItem$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/didi/game/download/DownloadItem$State;->value:I

    .line 146
    iput p3, p0, Lcom/didi/game/download/DownloadItem$State;->value:I

    .line 147
    return-void
.end method

.method public static valueOf(I)Lcom/didi/game/download/DownloadItem$State;
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 168
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    :goto_0
    return-object v0

    .line 152
    :pswitch_0
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->BEFORE:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->WAITING:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 156
    :pswitch_2
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->STARTED:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->LOADING:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 160
    :pswitch_4
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->PAUSE:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 162
    :pswitch_5
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->CANCELLED:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 164
    :pswitch_6
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->SUCCESS:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 166
    :pswitch_7
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->INSTALLED:Lcom/didi/game/download/DownloadItem$State;

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/game/download/DownloadItem$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 141
    const-class v0, Lcom/didi/game/download/DownloadItem$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/game/download/DownloadItem$State;

    return-object v0
.end method

.method public static values()[Lcom/didi/game/download/DownloadItem$State;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/didi/game/download/DownloadItem$State;->$VALUES:[Lcom/didi/game/download/DownloadItem$State;

    invoke-virtual {v0}, [Lcom/didi/game/download/DownloadItem$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/game/download/DownloadItem$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/didi/game/download/DownloadItem$State;->value:I

    return v0
.end method
