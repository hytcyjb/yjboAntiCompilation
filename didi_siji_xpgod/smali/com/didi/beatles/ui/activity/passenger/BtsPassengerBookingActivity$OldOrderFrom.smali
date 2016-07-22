.class public final enum Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;
.super Ljava/lang/Enum;
.source "BtsPassengerBookingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OldOrderFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

.field public static final enum LIST:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

.field public static final enum OTHER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

.field public static final enum WAIT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    const-string v1, "WAIT"

    invoke-direct {v0, v1, v2}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->WAIT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->LIST:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    new-instance v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->OTHER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->WAIT:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->LIST:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->OTHER:Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->$VALUES:[Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;
    .locals 1
    .parameter "name"

    .prologue
    .line 69
    const-class v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    return-object v0
.end method

.method public static values()[Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->$VALUES:[Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    invoke-virtual {v0}, [Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/didi/beatles/ui/activity/passenger/BtsPassengerBookingActivity$OldOrderFrom;

    return-object v0
.end method
