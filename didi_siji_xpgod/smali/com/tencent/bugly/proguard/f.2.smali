.class public final Lcom/tencent/bugly/proguard/f;
.super Lcom/tencent/bugly/proguard/j;
.source "BUGLY"


# static fields
.field private static k:[B

.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic m:Z


# instance fields
.field public a:S

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[B

.field private f:B

.field private g:I

.field private h:I

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    const-class v0, Lcom/tencent/bugly/proguard/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/f;->m:Z

    .line 90
    sput-object v1, Lcom/tencent/bugly/proguard/f;->k:[B

    .line 91
    sput-object v1, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    .line 7
    iput-short v0, p0, Lcom/tencent/bugly/proguard/f;->a:S

    .line 9
    iput-byte v0, p0, Lcom/tencent/bugly/proguard/f;->f:B

    .line 11
    iput v0, p0, Lcom/tencent/bugly/proguard/f;->g:I

    .line 13
    iput v0, p0, Lcom/tencent/bugly/proguard/f;->b:I

    .line 15
    iput-object v1, p0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    .line 21
    iput v0, p0, Lcom/tencent/bugly/proguard/f;->h:I

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4
    .parameter

    .prologue
    .line 96
    :try_start_0
    iget-short v0, p0, Lcom/tencent/bugly/proguard/f;->a:S

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(SIZ)S

    move-result v0

    iput-short v0, p0, Lcom/tencent/bugly/proguard/f;->a:S

    .line 97
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/f;->f:B

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/proguard/f;->f:B

    .line 98
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->g:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/f;->g:I

    .line 99
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/f;->b:I

    .line 100
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    .line 101
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/tencent/bugly/proguard/f;->k:[B

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/tencent/bugly/proguard/f;->k:[B

    .line 105
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/f;->k:[B

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/f;->e:[B

    .line 106
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->h:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/f;->h:I

    .line 107
    sget-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    sput-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_1
    sget-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/f;->i:Ljava/util/Map;

    .line 112
    sget-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    sput-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/f;->l:Ljava/util/Map;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/f;->j:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RequestPacket decode error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/f;->e:[B

    invoke-static {v3}, Lcom/tencent/bugly/proguard/e;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-short v0, p0, Lcom/tencent/bugly/proguard/f;->a:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(SI)V

    .line 78
    iget-byte v0, p0, Lcom/tencent/bugly/proguard/f;->f:B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(BI)V

    .line 79
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->g:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    .line 80
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->b:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    .line 81
    iget-object v0, p0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    .line 83
    iget-object v0, p0, Lcom/tencent/bugly/proguard/f;->e:[B

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a([BI)V

    .line 84
    iget v0, p0, Lcom/tencent/bugly/proguard/f;->h:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    .line 85
    iget-object v0, p0, Lcom/tencent/bugly/proguard/f;->i:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 86
    iget-object v0, p0, Lcom/tencent/bugly/proguard/f;->j:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/b;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    .line 129
    iget-short v1, p0, Lcom/tencent/bugly/proguard/f;->a:S

    const-string v2, "iVersion"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(SLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 130
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/f;->f:B

    const-string v2, "cPacketType"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 131
    iget v1, p0, Lcom/tencent/bugly/proguard/f;->g:I

    const-string v2, "iMessageType"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 132
    iget v1, p0, Lcom/tencent/bugly/proguard/f;->b:I

    const-string v2, "iRequestId"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 133
    iget-object v1, p0, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    const-string v2, "sServantName"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 134
    iget-object v1, p0, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    const-string v2, "sFuncName"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 135
    iget-object v1, p0, Lcom/tencent/bugly/proguard/f;->e:[B

    const-string v2, "sBuffer"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a([BLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 136
    iget v1, p0, Lcom/tencent/bugly/proguard/f;->h:I

    const-string v2, "iTimeout"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 137
    iget-object v1, p0, Lcom/tencent/bugly/proguard/f;->i:Ljava/util/Map;

    const-string v2, "context"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 138
    iget-object v1, p0, Lcom/tencent/bugly/proguard/f;->j:Ljava/util/Map;

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    .line 139
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 66
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :cond_0
    return-object v0

    .line 70
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/bugly/proguard/f;->m:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    .line 47
    check-cast p1, Lcom/tencent/bugly/proguard/f;

    .line 48
    .end local p1
    iget-short v1, p1, Lcom/tencent/bugly/proguard/f;->a:S

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p1, Lcom/tencent/bugly/proguard/f;->f:B

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/tencent/bugly/proguard/f;->g:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/tencent/bugly/proguard/f;->b:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/proguard/f;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/proguard/f;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/proguard/f;->e:[B

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/tencent/bugly/proguard/f;->h:I

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/proguard/f;->i:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/bugly/proguard/f;->j:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
