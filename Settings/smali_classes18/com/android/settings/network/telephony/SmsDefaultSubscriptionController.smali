.class public Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.source "SmsDefaultSubscriptionController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getDefaultSubscriptionId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    return v0
.end method

.method protected getDefaultSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected setDefaultSubscription(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/SmsDefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    return-void
.end method
