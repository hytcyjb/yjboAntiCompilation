.class public Lcom/didi/car/helper/AlarmAdapter;
.super Ljava/lang/Object;
.source "AlarmAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/content/Context;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "context"
    .parameter "pi"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 67
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public set(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .locals 4
    .parameter "context"
    .parameter "delay"
    .parameter "operation"

    .prologue
    .line 10
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 19
    :cond_0
    :goto_0
    return-void

    .line 13
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 14
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 18
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setRct(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .locals 4
    .parameter "context"
    .parameter "delay"
    .parameter "operation"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 26
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 30
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3, p4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setRepeating(Landroid/content/Context;JJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "context"
    .parameter "delay"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 40
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 44
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setRepeatingRct(Landroid/content/Context;JJLandroid/app/PendingIntent;)V
    .locals 7
    .parameter "context"
    .parameter "delay"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    if-nez p6, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    .local v0, am:Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0, p6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 58
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
