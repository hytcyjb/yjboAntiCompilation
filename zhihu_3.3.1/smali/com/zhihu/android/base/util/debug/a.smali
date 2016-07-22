.class public Lcom/zhihu/android/base/util/debug/a;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/zhihu/android/base/util/debug/DebugLevel;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "ZHIHU DEBUG"

    sput-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->ALL:Lcom/zhihu/android/base/util/debug/DebugLevel;

    sput-object v0, Lcom/zhihu/android/base/util/debug/a;->b:Lcom/zhihu/android/base/util/debug/DebugLevel;

    .line 48
    const/4 v0, 0x3

    sput v0, Lcom/zhihu/android/base/util/debug/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zhihu/android/base/util/debug/DebugLevel;)V
    .locals 2
    .parameter

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pDebugLevel must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    sput-object p0, Lcom/zhihu/android/base/util/debug/a;->b:Lcom/zhihu/android/base/util/debug/DebugLevel;

    .line 68
    return-void
.end method

.method private static a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private static a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    sget-object v0, Lcom/zhihu/android/base/util/debug/a$1;->a:[I

    invoke-virtual {p0}, Lcom/zhihu/android/base/util/debug/DebugLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :pswitch_3
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :pswitch_4
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :pswitch_5
    invoke-static {p1}, Lcom/zhihu/android/base/util/debug/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->NONE:Lcom/zhihu/android/base/util/debug/DebugLevel;

    if-ne p0, v1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {p0, p1}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/zhihu/android/base/util/debug/a;->b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p0, p1}, Lcom/zhihu/android/base/util/debug/a;->b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 148
    const-string v1, ""

    .line 150
    array-length v4, v3

    move v2, v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 151
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 153
    const-string v7, "dalvik.system.VMStack"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-class v7, Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-class v7, Lcom/zhihu/android/base/util/debug/a;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v7

    if-nez v7, :cond_1

    .line 154
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/zhihu/android/base/util/debug/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/zhihu/android/base/util/debug/a;->b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    sget v5, Lcom/zhihu/android/base/util/debug/a;->c:I

    add-int/lit8 v5, v5, -0x1

    if-le v1, v5, :cond_3

    .line 166
    :cond_2
    invoke-static {p0, p1}, Lcom/zhihu/android/base/util/debug/a;->b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V

    .line 168
    invoke-static {p0, p1, p2}, Lcom/zhihu/android/base/util/debug/a;->b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {p0, p1}, Lcom/zhihu/android/base/util/debug/a;->c(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->b:Lcom/zhihu/android/base/util/debug/DebugLevel;

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->DEBUG:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/util/debug/DebugLevel;->isSameOrLessThan(Lcom/zhihu/android/base/util/debug/DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->DEBUG:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/zhihu/android/base/util/debug/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 254
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    return-void
.end method

.method private static b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 112
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private static b(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2551 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/zhihu/android/base/util/debug/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->b:Lcom/zhihu/android/base/util/debug/DebugLevel;

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->INFO:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/util/debug/DebugLevel;->isSameOrLessThan(Lcom/zhihu/android/base/util/debug/DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->INFO:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 258
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    return-void
.end method

.method private static c(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/zhihu/android/base/util/debug/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->b:Lcom/zhihu/android/base/util/debug/DebugLevel;

    sget-object v1, Lcom/zhihu/android/base/util/debug/DebugLevel;->ERROR:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-virtual {v0, v1}, Lcom/zhihu/android/base/util/debug/DebugLevel;->isSameOrLessThan(Lcom/zhihu/android/base/util/debug/DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/zhihu/android/base/util/debug/DebugLevel;->ERROR:Lcom/zhihu/android/base/util/debug/DebugLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/zhihu/android/base/util/debug/a;->a(Lcom/zhihu/android/base/util/debug/DebugLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    :cond_0
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zhihu/android/base/util/debug/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
