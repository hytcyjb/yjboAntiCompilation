.class public Lcom/zhihu/android/app/d/l;
.super Ljava/lang/Object;
.source "NotificationReadEvent.java"


# instance fields
.field private a:Lcom/zhihu/android/api/model/Notification;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/zhihu/android/api/model/Notification;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/zhihu/android/app/d/l;->a:Lcom/zhihu/android/api/model/Notification;

    .line 31
    iput p2, p0, Lcom/zhihu/android/app/d/l;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/zhihu/android/api/model/Notification;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zhihu/android/app/d/l;->a:Lcom/zhihu/android/api/model/Notification;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/zhihu/android/app/d/l;->b:I

    return v0
.end method
