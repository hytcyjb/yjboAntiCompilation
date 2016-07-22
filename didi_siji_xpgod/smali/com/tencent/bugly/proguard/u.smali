.class public final Lcom/tencent/bugly/proguard/u;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/u$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/u;->a:Lcom/tencent/bugly/proguard/u$a;

    return-void
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/proguard/u$a;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/tencent/bugly/proguard/u;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/tencent/bugly/proguard/u;->a:Lcom/tencent/bugly/proguard/u$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs a()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs a(ILjava/lang/String;[Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->b()Lcom/tencent/bugly/proguard/u$a;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 90
    :goto_0
    return v2

    .line 73
    :cond_0
    if-nez p1, :cond_2

    const-string p1, "null"

    .line 75
    :cond_1
    :goto_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/u$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    if-eqz p2, :cond_1

    array-length v1, p2

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 81
    :pswitch_1
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/u$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/u$a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/u$a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(ILjava/lang/Throwable;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-static {}, Lcom/tencent/bugly/proguard/u;->b()Lcom/tencent/bugly/proguard/u$a;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    .line 116
    :goto_0
    return v2

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 101
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u$a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u$a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u$a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/u$a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 138
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized b()Lcom/tencent/bugly/proguard/u$a;
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/tencent/bugly/proguard/u;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/u;->a:Lcom/tencent/bugly/proguard/u$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/tencent/bugly/proguard/u;->a(ILjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
