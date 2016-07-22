.class public Lcom/didi/ddrive/util/GlobalSwitch;
.super Ljava/lang/Object;
.source "GlobalSwitch.java"


# static fields
.field public static final ONLINE:I = 0x1

#the value of this static final field might be set in the static constructor
.field public static final SEVER_CONFIG:I = 0x0

.field public static final STABLE:I = 0x2

.field public static final TEST:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/didi/ddrive/util/GlobalSwitch;->SEVER_CONFIG:I

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
