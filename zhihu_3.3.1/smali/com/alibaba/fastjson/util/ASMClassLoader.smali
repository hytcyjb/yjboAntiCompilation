.class public Lcom/alibaba/fastjson/util/ASMClassLoader;
.super Ljava/lang/ClassLoader;
.source "ASMClassLoader.java"


# static fields
.field private static DOMAIN:Ljava/security/ProtectionDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/ProtectionDomain;

    sput-object v0, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/alibaba/fastjson/util/ASMClassLoader;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 22
    return-void
.end method

.method static getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    const-class v1, Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 34
    :cond_0
    const-class v0, Lcom/alibaba/fastjson/JSON;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BII)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v5, Lcom/alibaba/fastjson/util/ASMClassLoader;->DOMAIN:Ljava/security/ProtectionDomain;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 51
    :cond_1
    if-eqz p0, :cond_2

    .line 52
    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
