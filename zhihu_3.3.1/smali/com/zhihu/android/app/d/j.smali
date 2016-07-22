.class public Lcom/zhihu/android/app/d/j;
.super Ljava/lang/Object;
.source "NewMessageCountChangedEvent.java"


# instance fields
.field private a:Lcom/zhihu/android/api/model/NotificationBadge;


# direct methods
.method public constructor <init>(Lcom/zhihu/android/api/model/NotificationBadge;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/zhihu/android/app/d/j;->a:Lcom/zhihu/android/api/model/NotificationBadge;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Lcom/zhihu/android/api/model/NotificationBadge;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zhihu/android/app/d/j;->a:Lcom/zhihu/android/api/model/NotificationBadge;

    return-object v0
.end method
