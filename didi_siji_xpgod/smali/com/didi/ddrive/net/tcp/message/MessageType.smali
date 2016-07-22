.class public Lcom/didi/ddrive/net/tcp/message/MessageType;
.super Ljava/lang/Object;
.source "MessageType.java"


# static fields
.field public static CMD_UNDEFINED:I

.field public static DRIVER_ACK:I

.field public static DRIVER_HEART:I

.field public static DRIVER_VERIFY:I

.field public static PASSENGER_ACK:I

.field public static PASSENGER_HEART:I

.field public static PASSENGER_VERIFY:I

.field public static USER_DEFINE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, -0x1

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->CMD_UNDEFINED:I

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->USER_DEFINE:I

    .line 19
    const/4 v0, 0x1

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->PASSENGER_VERIFY:I

    .line 23
    const/4 v0, 0x2

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->PASSENGER_HEART:I

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->DRIVER_VERIFY:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->DRIVER_HEART:I

    .line 35
    const/4 v0, 0x5

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->DRIVER_ACK:I

    .line 39
    const/4 v0, 0x6

    sput v0, Lcom/didi/ddrive/net/tcp/message/MessageType;->PASSENGER_ACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
