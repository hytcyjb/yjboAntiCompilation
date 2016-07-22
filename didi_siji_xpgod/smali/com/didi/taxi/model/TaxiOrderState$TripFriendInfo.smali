.class public final Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;
.super Ljava/lang/Object;
.source "TaxiOrderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/taxi/model/TaxiOrderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TripFriendInfo"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public end_name:Ljava/lang/String;

.field public from_name:Ljava/lang/String;

.field public head_url:Ljava/lang/String;

.field public nick:Ljava/lang/String;

.field final synthetic this$0:Lcom/didi/taxi/model/TaxiOrderState;


# direct methods
.method public constructor <init>(Lcom/didi/taxi/model/TaxiOrderState;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/didi/taxi/model/TaxiOrderState$TripFriendInfo;->this$0:Lcom/didi/taxi/model/TaxiOrderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
