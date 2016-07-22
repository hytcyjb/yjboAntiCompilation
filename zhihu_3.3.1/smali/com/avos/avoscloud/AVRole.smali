.class public Lcom/avos/avoscloud/AVRole;
.super Lcom/avos/avoscloud/AVObject;
.source "AVRole.java"


# static fields
.field public static final transient CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final className:Ljava/lang/String; = "_Role"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    sput-object v0, Lcom/avos/avoscloud/AVRole;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "_Role"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    const-string v0, "_Role"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/avos/avoscloud/PaasClient;->storageInstance()Lcom/avos/avoscloud/PaasClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avos/avoscloud/PaasClient;->getDefaultACL()Lcom/avos/avoscloud/AVACL;

    move-result-object v0

    iput-object v0, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    .line 33
    iget-object v0, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no default ACL,please provide an ACL for the role with AVRole(String name, AVACL acl) constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/avos/avoscloud/AVACL;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v0, "_Role"

    invoke-direct {p0, v0}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/avos/avoscloud/AVRole;->acl:Lcom/avos/avoscloud/AVACL;

    .line 53
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public static getQuery()Lcom/avos/avoscloud/AVQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/avos/avoscloud/AVQuery",
            "<",
            "Lcom/avos/avoscloud/AVRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/avos/avoscloud/AVQuery;

    const-class v1, Lcom/avos/avoscloud/AVRole;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVPowerfulUtils;->getAVClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/AVQuery;-><init>(Ljava/lang/String;)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoles()Lcom/avos/avoscloud/AVRelation;
    .locals 1

    .prologue
    .line 84
    const-string v0, "roles"

    invoke-super {p0, v0}, Lcom/avos/avoscloud/AVObject;->getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lcom/avos/avoscloud/AVRelation;
    .locals 1

    .prologue
    .line 95
    const-string v0, "users"

    invoke-super {p0, v0}, Lcom/avos/avoscloud/AVObject;->getRelation(Ljava/lang/String;)Lcom/avos/avoscloud/AVRelation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/AVObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avos/avoscloud/AVRole;->name:Ljava/lang/String;

    .line 123
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/avos/avoscloud/AVRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    return-void
.end method
