.class public Lcom/didi/beatles/model/order/BtsOrderCalculate$SignItem;
.super Ljava/lang/Object;
.source "BtsOrderCalculate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/model/order/BtsOrderCalculate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public color:Ljava/lang/String;

.field public font:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
