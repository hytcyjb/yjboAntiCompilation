.class public Lcom/avos/avoscloud/AVObject$AVObjectCreator;
.super Ljava/lang/Object;
.source "AVObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avos/avoscloud/AVObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AVObjectCreator"
.end annotation


# static fields
.field public static instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2373
    new-instance v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    invoke-direct {v0}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;-><init>()V

    sput-object v0, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->instance:Lcom/avos/avoscloud/AVObject$AVObjectCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVObject;
    .locals 2
    .parameter

    .prologue
    .line 2381
    new-instance v0, Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, p1}, Lcom/avos/avoscloud/AVObject;-><init>(Landroid/os/Parcel;)V

    .line 2382
    #getter for: Lcom/avos/avoscloud/AVObject;->className:Ljava/lang/String;
    invoke-static {v0}, Lcom/avos/avoscloud/AVObject;->access$900(Lcom/avos/avoscloud/AVObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avos/avoscloud/AVUtils;->getAVObjectClassByClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 2383
    if-eqz v1, :cond_0

    .line 2385
    :try_start_0
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVObject;->cast(Lcom/avos/avoscloud/AVObject;Ljava/lang/Class;)Lcom/avos/avoscloud/AVObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2389
    :cond_0
    :goto_0
    return-object v0

    .line 2387
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2372
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/avos/avoscloud/AVObject;
    .locals 1
    .parameter

    .prologue
    .line 2394
    new-array v0, p1, [Lcom/avos/avoscloud/AVObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 2372
    invoke-virtual {p0, p1}, Lcom/avos/avoscloud/AVObject$AVObjectCreator;->newArray(I)[Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    return-object v0
.end method
