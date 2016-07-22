.class public Lcom/didi/car/helper/AlarmCustomAdapter;
.super Lcom/didi/car/helper/AlarmAdapter;
.source "AlarmCustomAdapter.java"


# static fields
.field public static final HOUR:I = 0x36ee80

.field public static final MINUTE:I = 0xea60

.field public static final SECOND:I = 0x3e8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/didi/car/helper/AlarmAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public setRct(Landroid/content/Context;JLandroid/app/PendingIntent;)V
    .locals 2
    .parameter "context"
    .parameter "delay"
    .parameter "operation"

    .prologue
    .line 14
    const-wide/32 v0, 0x493e0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 15
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/car/helper/AlarmAdapter;->set(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    .line 19
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/didi/car/helper/AlarmAdapter;->setRct(Landroid/content/Context;JLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setRepeatingRct(Landroid/content/Context;JJLandroid/app/PendingIntent;)V
    .locals 2
    .parameter "context"
    .parameter "delay"
    .parameter "intervalMillis"
    .parameter "operation"

    .prologue
    .line 24
    const-wide/32 v0, 0x493e0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 25
    invoke-super/range {p0 .. p6}, Lcom/didi/car/helper/AlarmAdapter;->setRepeating(Landroid/content/Context;JJLandroid/app/PendingIntent;)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/didi/car/helper/AlarmAdapter;->setRepeatingRct(Landroid/content/Context;JJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
