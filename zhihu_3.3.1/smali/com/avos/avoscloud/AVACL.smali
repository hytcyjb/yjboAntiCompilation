.class public Lcom/avos/avoscloud/AVACL;
.super Ljava/lang/Object;
.source "AVACL.java"


# static fields
.field private static publicTag:Ljava/lang/String;

.field private static readTag:Ljava/lang/String;

.field private static rolePrefix:Ljava/lang/String;

.field private static writeTag:Ljava/lang/String;


# instance fields
.field private final permissionsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "read"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    .line 19
    const-string v0, "write"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    .line 20
    const-string v0, "*"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    .line 21
    const-string v0, "role:"

    sput-object v0, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 28
    return-void
.end method

.method constructor <init>(Lcom/avos/avoscloud/AVACL;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 32
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    iget-object v1, p1, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/avos/avoscloud/AVUser;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    .line 42
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 43
    invoke-virtual {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 44
    return-void
.end method

.method private allowRead(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private allowWrite(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 72
    if-eqz p1, :cond_1

    .line 73
    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 327
    invoke-static {p0}, Lcom/avos/avoscloud/AVUtils;->isBlankString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-object p0

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avos/avoscloud/AVACL;->rolePrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private isReadAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->readTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWriteAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, v1}, Lcom/avos/avoscloud/AVACL;->mapForKey(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 81
    if-eqz v2, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avos/avoscloud/AVACL;->writeTag:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private mapForKey(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 48
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    return-object v0
.end method

.method public static parseACLWithPublicAccess(ZZ)Lcom/avos/avoscloud/AVACL;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    new-instance v0, Lcom/avos/avoscloud/AVACL;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVACL;-><init>()V

    .line 225
    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/AVACL;->setPublicReadAccess(Z)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/AVACL;->setPublicWriteAccess(Z)V

    .line 227
    return-object v0
.end method

.method private roleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 118
    const-string v0, "role:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultACL(Lcom/avos/avoscloud/AVACL;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 206
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avos/avoscloud/PaasClient;->setDefaultACL(Lcom/avos/avoscloud/AVACL;)V

    .line 208
    if-eqz p1, :cond_1

    .line 209
    invoke-static {}, Lcom/avos/avoscloud/AVUser;->getCurrentUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 212
    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V

    .line 214
    :cond_1
    return-void
.end method


# virtual methods
.method getACLMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v1, "ACL"

    invoke-virtual {p0}, Lcom/avos/avoscloud/AVACL;->getPermissionsById()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-object v0
.end method

.method getPermissionsById()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/avos/avoscloud/AVACL;->permissionsById:Ljava/util/Map;

    return-object v0
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isReadAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Lcom/avos/avoscloud/AVRole;)Z
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVACL;->roleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Lcom/avos/avoscloud/AVUser;)Z
    .locals 1
    .parameter

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avos/avoscloud/AVACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/avos/avoscloud/AVACL;->isWriteAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .parameter

    .prologue
    .line 234
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 235
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .parameter

    .prologue
    .line 241
    sget-object v0, Lcom/avos/avoscloud/AVACL;->publicTag:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 242
    return-void
.end method

.method public setReadAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 256
    return-void
.end method

.method public setRoleReadAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    .line 267
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVACL;->allowRead(ZLjava/lang/String;)V

    .line 278
    return-void
.end method

.method public setRoleWriteAccess(Lcom/avos/avoscloud/AVRole;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    .line 289
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {p1}, Lcom/avos/avoscloud/AVACL;->getRoleTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 300
    return-void
.end method

.method public setWriteAccess(Lcom/avos/avoscloud/AVUser;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/avos/avoscloud/AVUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/avos/avoscloud/AVACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 307
    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p2, p1}, Lcom/avos/avoscloud/AVACL;->allowWrite(ZLjava/lang/String;)V

    .line 314
    return-void
.end method
