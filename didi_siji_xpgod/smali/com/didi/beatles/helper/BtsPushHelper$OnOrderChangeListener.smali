.class public abstract Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;
.super Ljava/lang/Object;
.source "BtsPushHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/helper/BtsPushHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnOrderChangeListener"
.end annotation


# instance fields
.field private oid:Ljava/lang/String;

.field private role:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->oid:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "oid"
    .parameter "role"

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->oid:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->oid:Ljava/lang/String;

    .line 279
    iput p2, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->role:I

    .line 280
    return-void
.end method


# virtual methods
.method public getOid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/didi/beatles/helper/BtsPushHelper$OnOrderChangeListener;->role:I

    return v0
.end method

.method public abstract onReceive(Lcom/didi/beatles/model/pb/BtsOrderDataChangedTip;)V
.end method
