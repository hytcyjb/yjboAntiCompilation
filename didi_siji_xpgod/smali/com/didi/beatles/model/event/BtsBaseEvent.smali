.class public Lcom/didi/beatles/model/event/BtsBaseEvent;
.super Ljava/lang/Object;
.source "BtsBaseEvent.java"


# static fields
.field public static final BTS_CHANGE_ROLE_EVENT:Ljava/lang/String; = "BTS_CHANGE_ROLE_EVENT"

.field public static final BTS_ORDER_EVENT:Ljava/lang/String; = "BTS_ORDER_EVENT"

.field public static final BTS_ROUTE_EVENT:Ljava/lang/String; = "BTS_ROUTE_EVENT"

.field public static final BTS_ROUTE_SETTING_EVENT:Ljava/lang/String; = "BTS_ROUTE_SETTING_EVENT"

.field public static final BTS_STRIVE_ORDER_SUCCESS_EVENT:Ljava/lang/String; = "BTS_STRIVE_ORDER_SUCCESS_EVENT"

.field public static final BTS_WEIXIN_GET_CODE:Ljava/lang/String; = "BTS_WEIXIN_GET_CODE"


# instance fields
.field private argStr:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/didi/beatles/model/event/BtsBaseEvent;->argStr:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/didi/beatles/model/event/BtsBaseEvent;->type:I

    return v0
.end method

.method public setArgStr(Ljava/lang/String;)V
    .locals 0
    .parameter "argStr"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/didi/beatles/model/event/BtsBaseEvent;->argStr:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 21
    iput p1, p0, Lcom/didi/beatles/model/event/BtsBaseEvent;->type:I

    .line 22
    return-void
.end method
